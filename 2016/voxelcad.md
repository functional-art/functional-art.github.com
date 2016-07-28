---
layout: default
title: "FARM 2016 Demo Proposal: VoxelCAD"
active: farm2016
---

# Demo: VoxelCAD, a collaborative voxel-based CAD tool

## Csongor Kiss, Toby Shaw

Voxels (volumetric pixels, ie. cubes) allow for an expressive yet accessible means of representing forms in 3D space. With the recent success of Minecraft and previously Lego, creative work in voxel-based mediums has never been more popular. Despite this, the creative tools surrounding these mediums are lacking in key areas, making the process time-consuming and often unrewarding.

We propose VoxelCAD, a collaborative voxel-based CAD tool in the browser, which aims to be fast, expressive and remove the frustrations found in other tools. The editor manages vector representations of 3D shapes, but gives real-time feedback about the voxel form of each object. By doing this, we give the user more flexibility in manipulating their creation, which would be lost if only voxel data was stored. The application consists of a client-side frontend (the editor), which is written in Elm, and a server-side Haskell-based backend.

## Simultaneous Collaboration

We support multiple users working on a project at the same time. Users can collaborate in a real-time environment, where updates can be seen immediately, very much like building in Minecraft. However, sometimes people wish to experiment with ideas in the same region, and perhaps merge their work together, or go back in history, see other people's progress, etc. This sort of feature set reminded us of those available in version control systems, thus our system is heavily inspired by the theory behind the [Darcs VCS](http://darcs.net/) (which is mainly popular in the Haskell community). Since we do not store the actual voxel data, only the vector representation of the geometry, delta changes can efficiently be stored, and diffs calculated between two 'branches'. The world can be thought of as a purely functional data structure, where making a change returns a new version of the world. These changes are pure functions, and only the order of these functions need to be stored persistently. This is of course only the API provided to higher-level parts of the application, the actual implementation cheats a bit, and does mutate the current state for performance reasons. We found Elm’s JavaScript FFI to be very easy to use in implementing our performance-critical data structures, then exposing pure APIs to these.

Thinking about the world in this way also means we can expose a user-facing API for programmatically manipulating the world, in the form of a simple scripting language. In its current form, this language is a minimalistic pure LISP dialect. Our formulation nicely integrates these user-defined programs into our history system, since these can also be thought of as pure functions.

The reason we chose to make the language pure was that we wanted the editor to respond immediately to changes in the code, and we wanted this "hot-loading" behaviour to be deterministic and predictable. A change simply rolls back the script then runs it again. This is much more of domain-specific language than a full-blown programming language, and has a declarative feel, aiding in the construction of objects.

## Constructive Solid Geometry

We also adopted the techniques of Constructive Solid Geometry (CSG) found in other CAD tools. This is where primitive solids are combined through boolean operations, allowing for a variety of complex shapes to be made in a small number of steps. We chose this method of construction as it matches the volumetric nature of voxel-based worlds.

The conversion between a shape’s vector representation and its voxel form is a process known as voxelisation, which is a fundamental part of our editor. In our approach to voxelisation, the bulk of the work is done on the GPU through the WebGL API. Our method uses two orthographic projections from opposite sides, calculating two depth values at each coordinate, which is enough to reconstruct any convex shape. A bonus of this method of voxelisation is that it scales well into supporting CSG, since the primitives can each be voxelised on separate colour channels and interpreted afterwards.

## Communication with the Backend

Communication between the editor and the backend service happens through websockets. This involves a lot of serialisation, and often times the data being sent consists of a large number of small data structures. At the moment, a schema-less object representation is used (CBOR), but we are looking into other options that would allow us to exploit the statically known types of our API endpoints.

We found that manually keeping the data structure definitions on both sides up to date is error prone, and also more difficult to test. If the server's data structure changes, there are no static guarantees at the editor's side, only runtime errors resulting from failed deserialisation when data is received. Furthermore, while our server language, Haskell, has great support for automatically generating serialisers and deserialisers for our data structures, Elm, at the time of writing does not have any deriving mechanisms, nor generic programming facilities, so this boilerplate would have to be written and updated manually.

Our solution to this problem makes use of the Generic metadata provided by GHC. We define all of our data structures in the server-side Haskell code, then generate Elm types from these. This proved to be fairly simple a task, because Elm's data types are very similar in construction to those of Haskell; both languages use algebraic data types. Records are treated as a special case, as Elm has good support for extensible records, thus only type aliases are generated for these. Finally, using the same Generic representation, we generate our serialiser/deserialiser Elm code. This is integrated into our build system; changes in the data structure are detected, prompting the rebuild of the frontend code, and type mismatches resulting from this are immediately caught statically.

## Elm

[Elm](http://elm-lang.org/) is a relatively young language, with new versions frequently breaking existing features. 0.17 just came out before we started working on our project, ditching the explicit FRP style in favour of a more implicit approach, dubbed as the 'subscription' system. This turned out to be a very similar concept, only with most of the plumbing abstracted and hidden away under the hood. Fortunately, this meant that existing learning material could be used, and trivially translated to the new subscription system.

As it was expected, since the language is still in its infancy, the ecosystem also lacks a lot of libraries ubiquitous in other, more established languages. For example, the mouse library does not support right button events, or the WebGL library does not provide the option to render to custom targets, only the screen. Both of these are essential to our application, so we had to extend these libraries to fit our needs, often by touching parts of the language that are not yet documented, or having to write JavaScript (the target language of Elm, in which the 'native' libraries are implemented).

It seems that the ways in which control flow should be handled are still not quite decided. The 'official' way of managing some shared (pure) state between functions is by putting the state in a tuple, then manually pattern matching on it. This would be normally abstracted away using a State monad, which is not provided by the core library, but possible to implement in the language (without the convenience of the do notation). However, at the moment the Elm compiler doesn't support tail call optimisation, which is the most common source of surprises. To this end, a lot of the core library functions are implemented in JavaScript (the list map function is a good example), and our custom State monad implementation is also prone to blowing up the stack when a large number of computations are sequenced. The core library provides methods for trampolining our functions, essentially solving this problem at the expense of some performance and convenience.

## Demo

Our aim with the demo is to show the features of our application, share our experiences with using functional programming techniques for building a complex, interactive web application, both the positives and the negatives. We can also provide reflection on some of the mistakes we have made, and how we think these could be avoided. Most of all, we found functional programming to be overall a good fit for this type of project, and would like to demonstrate some of less obvious reasons why we believe this.


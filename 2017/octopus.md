
# Octopus: A High-Level Fast 3D Animation Language

### Simon Archipoff and David Janin (LaBRI, University of Bordeaux, Bordeaux INP, France)

_In this demo we aim at presenting the basic feature we have put in practice via the definition of Octopus: a programing language embedded in Haskell for complex description of (reactive) 3D animations. As a front end, Octopus simply extend the LOGO's Turtle command language to 3D and time dimension, inheriting Haskell do notation via an embedding of the underlying semantics monoids into IO monads. As a back end, most of the rendering is directly described as OpenGL shaders performed by the GPU allowing thus fast rendering with low communication bandwidth between Haskell (CPU) and GLSL (GPU). The resulting source code should soon be made available for participative development of the Octopus language. A GHCi-compatible version of our current (compiled) version is also available._

<br>

#### General principles

_Octopus_ is a high-level language prototype that aims at offering a simple API for defining complex procedural 3D animations. 
Simplicity is obtained by offering to the user a set of 3D animation commands that govern (both in time and space) the octopus: a parameterized 2D shaped extruder.
Though related to the good old Logo language, our octopus generalizes Logo's turtle in many ways. An additional interpolation principle (whose implementation is on his way) is expected to further simplify 3D curves definition by automatically interpolating two successive distant octopus positions in a smooth way. For instance, we aim at simply defining a sphere by adequately positioning its two poles and its equator circle in between.

#### Control commands and extruded curves specification

Control commands range among forward moves (translation), turns left, right, up or down (rotation), speed control (unidirectional scaling). Together, they essentially generate any reversible affine transformation of the 3D space. Extruded 2D curves are parameterized by various curve shapes such as circle, polygons or gears, together with various additional parameters such as radius, drawn angles, number of points, number of teeth, colors, etc.

#### Simplicity and efficiency

Most of the technicalities a 3D programmers usually has to face are automatized. 
This includes in particular:

- automatic triangulation of surfaces connecting two successive 2D curve specification,
- automatic (and coherent) computation of vertex surface normals based on the
neighborhood of each connecting surfaces,
- simple shading effects with possibility of many lights,
- varying resolution factor (or rasterization factor) depending on objects visibility.

All these tasks are executed on the GPU henceforth ensuring high efficiency. The API is defined as en EDSL in Haskell, hopefully soon usable directly under GHCi.

#### Usage examples

The Octopus name comes from our first experiment of the language which consists in defining the Octoclock: a 3D clock with visible gear mechanisms, extended with octopus like arms, in the first (essentially non GPU) version of the language. Further generalization of the timed extrusion principles eventually led us to the definition of sort of living 3D flowers, which has eventually been used for some music illustration:


<center>
	<a href="https://www.facebook.com/plugins/video.php?href=https://www.facebook.com/10000906 0684332/videos/1749884218656917/&show_text=1&width=500">
	<img src="/2017/octopus_rsrc/octopus-demo.png" alt="octopus demo" width="600">
	</a>
</center>


_Made in April 2017 with our non GPU version of the language, the speed of the video captured animation has been multiplied by 4 to meet a reasonable frame rate. The current version of Octopus allows for a direct "live" rendering of the same animation with at least cinema frame rate._

<br/>

#### Demo objectives

Aside giving few hints on the way the Octopus language can be used and providing various illustrations of its capacities, we aim at inviting interested programmers and users to participate to its development by

- contributing to the drawing core language, e.g. by suggesting new 2D curve specification,
- contributing to the IO controls, e.g. adding support for scene creation and/or traversal by means of 3D physical controllers,
- contributing to the octopus example library, e.g. adding any kind of living 3D objects,
- providing feedback and suggestions for the API itself, e.g. sharpness vs smoothness is
currently controlled by repeating octopus 2D shape specification,
- providing feedback for possible non-programmer usage such as artists,
and many other topics possibly linked with programming interactive music system, defining rich VR environments, and game-like techniques including, but not limited to, inverse cinematics, collision detection, physical properties (e.g. attraction and inertia modeling), progressive environment perception/reaction, etc. Our underlying sound and robust typed architecture should easily allow for implementing many extensions.

_The Octopus project aims at becoming and staying an open source software project, see <a href="https://github.com/OctopusFarm">https://github.com/OctopusFarm/Octopus</a> !_

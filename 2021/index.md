---
layout: default
title: FARM 2021
active: farm2021
---

## 9th ACM SIGPLAN International Workshop on Functional Art, Music, Modeling and Design (FARM)

<img src="/files/farm-lambda-small.jpg" style="float: right; margin: 10px;" />

**27th August, 2021**, co-virtual with
[ICFP 2021](https://icfp21.sigplan.org/), held entirely online.

### About

The ACM SIGPLAN International Workshop on Functional Art, Music,
Modelling and Design (FARM) gathers together people who are harnessing
functional techniques in the pursuit of creativity and expression.

Functional Programming has emerged as a mainstream software
development paradigm, and its artistic and creative use is booming. A
growing number of software toolkits, frameworks and environments for
art, music and design now employ functional programming languages and
techniques. FARM is a forum for exploration and critical evaluation of
these developments, for example to consider potential benefits of
greater consistency, tersity, and closer mapping to a problem domain.

FARM encourages submissions from across art, craft and design,
including textiles, visual art, music, 3D sculpture, animation, GUIs,
video games, 3D printing and architectural models, choreography,
poetry, and even VLSI layouts, GPU configurations, or mechanical
engineering designs. Theoretical foundations, language design,
implementation issues, and applications in industry or the arts are
all within the scope of the workshop. The language used need not be
purely functional (“mostly functional” is fine), and may be manifested
as a domain specific language or tool. Moreover, submissions focusing
on questions or issues about the use of functional programming are
within the scope.

#### Workshop Registration

You can register for the FARM workshop through the
[ICFP registration page](http://icfp21.sigplan.org/attending/registration).

At least one author of each accepted submission must register and present their paper at the workshop.

### Program

The schedule can also be found on the
[ICFP conference website](https://icfp21.sigplan.org/home/farm-2021#program).

All times in the Paris timezone (UTC+2) and *preliminary*.

-------

##### 11:15 Welcome

##### 11:30

* **mimium: a self-extensible programming language for sound and music**<br/>
  Tomoya Matsuura and Kazuhiro Jo

##### 12:00

* **MidifilePerformer: a case study for chronologies** <br/>
  Juliette Chabassier, Myriam Desainte-Catherine, Jean Haury, Marin
  Pobel and Bernard Serpette
  
##### 12:30 Break

##### 13:00

* **Temporal-Scope Grammars for Polyphonic Music Generation**<br/>
  Lukas Eibensteiner, Martin Ilčík and Michael Wimmer

##### 13:30
* **The W-calculus: A Synchronous Framework for the Verified Modelling of Digital Signal Processing Algorithms**<br/>
Emilio Jesus Gallego Arias, Pierre Jouvelot, Sylvain Ribstein and Dorian Desblancs

##### 14:00

* **Human-in-the-loop Program Synthesis for Live Coding**<br/>
  Mark Santolucito

##### 14:30 Break

##### 15:00 Performances session

* [John Leo](http://www.halfaya.org/leo/), Logical Soundness

"Logical Soundness" aims to express a mathematical proof in a way so
that the basic structure of the proof is audible. Elements of the
proof are represented as musical motifs, and other aspects may modify
the music or sound. Recursive aspects of the proof are also
represented, for example by doubling the speed.

I have chosen a soundness proof to express in sound, in particular
lemma 4.3 of [this paper](https://dl.acm.org/doi/10.1145/3158111). 
This proof has been
formalized in Agda. Also using Agda, my own program uses reflection to
get the intermediate representation of the proof, and converts this
into music using a mapping from names to motifs, maintaining the basic
structure. It uses my library
[MusicTools](https://github.com/halfaya/MusicTools) to handle most of the work and
generate a MIDI file as output.

* [Emiddio Vasquez](https://emiddiovasquez.info/), Title TBA
* [José Miguel Fernandez](https://zkm.de/en/person/jose-miguel-fernandez), Homotopy
  
The piece captures the gesture of the percussionist to drive the
electronics. A first version was created by percussionist Thierry
Miroglio in Shizuoka (Japan) in 2016. The final version has been
commissioned by the Biennale de Venise in 2017. The electronics has
been rewritten in 2020 to use SuperCollider and this work is part of
my PhD.

The programming of the piece is structured using "actors" (parallel
objects) that represent inputs from the environment (accelerometers,
onset detection and spectral analysis of the percussion) and output
sound sources (generative process, synthesis, spatialization's data,
etc.). Each sound sources "listen" to some "gestures" (kicks, sliding
hands, etc.) that are detected in the accelerometers inputs.

The synthesis relies on a SuperCollider server which is driven by the
antescofo program. The interaction between the two is completely
applicative from the antescofo point of view (the actors attack an API
which hide all the technical details of the asynchronous
communications via OSC with the SuperCollider server).

##### 16:00 Break

##### 16:30 Keynote: [Phoenix Perry](https://phoenixperry.com/)

-------

### Workshop Organization

**Workshop Chair**: Daniel Winograd-Cort (Luminous Computing)

**Program Chair**: Jean-Louis Giavitto (IRCAM Paris)

**Publicity Chair**: Michael Sperber (Active Group GmbH)

**Performance Chair**: John MacCallum (HfMT Hamburg)

### Code of Conduct

FARM adheres to ICFP 2021's
[Code of Conduct](http://icfp20.sigplan.org/attending/code-of-conduct).

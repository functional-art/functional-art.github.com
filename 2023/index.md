---
layout: default
title: FARM 2023
active: farm2023
---

## 11th ACM SIGPLAN International Workshop on Functional Art, Music, Modeling and Design (FARM)

<img src="/files/farm-lambda-small.jpg" style="float: right; margin: 10px;" />

**8th September, 2023**, co-located with
[ICFP 2023](https://icfp23.sigplan.org/), held in Seattle, Washington, USA.

## About

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

[Call for Papers, Demos, and Performance](cfp.html) (expired)

[FARM 2023 ICFP Page](https://icfp23.sigplan.org/home/farm-2023)

## Code of Conduct

FARM adheres to the [SIGPLAN/ICFP Code of Conduct](https://icfp23.sigplan.org/attending/code-of-conduct).

## Program

- [Workshop](#workshop)
- [Performance evening](#performance)

## Workshop {#workshop}

### 9:00AM - Weighted Refinement Types for Counterpoint Composition
#### Youyou Cong

Refinement types are useful for describing specifications of
programs. When applied to music theory, however, refinement types are
too restrictive in that they do not allow breaking of rules.

To relax this restriction, we propose weighted refinement types, a
variation of refinement types where each refinement predicate carries
a weight representing the importance of that predicate. In this paper,
we present a weighted refinement type system that has core features
required for composing species counterpoint. We also discuss

<iframe width="560" height="315" src="https://www.youtube.com/embed/V-5uop6vudg?si=dfk5mLxfBC8C_JvU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### 9:30AM - The Beauty and Elegance of Functional Reactive Animation
#### Ivan Perez

It has been over 20 years since Elliott and Hudak published Functional
Reactive Animation, which outlined the principles of interactive
programming in functional languages. As a result, Functional Reactive
Programming (FRP) has seen numerous implementations and has been
applied to multiple areas, like robotics, physics simulations, game
programming and user interfaces. The use of the term FRP has itself
broadened, and nowadays covers both continuous-time purely functional
abstractions and discrete-time reactive implementations. This paper
presents a series of increasingly complex FRP animations in a current
implementation. With a main focus on clarity and meaning, we explore
three independent dimensions: space, time, and color. We demonstrate
that, when embraced fully, Functional Programming can result in
declarative constructs that are aesthetically beautiful and
notationally elegant.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Knl3ee-dSOM?si=mryWvQp3AeucipiU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### 10:00AM - Demo: A functional EDSL for mathematics visualization that compiles to JavaScript
#### Alistair Beharry

Visualizations are a critical part of mathematics practice and
education, and computers and open-source web technologies provide
accessible ways to create high-quality mathematics visualizations at
virtually no cost. However libraries and languages to create
visualizations for mathematics are typically fine-grained, low-level,
and targeted to vector graphics domain experts or web developers, not
mathematics students or teachers or end-users. We present demos of a
functional domain-specific language interface to the JSXGraph
visualization library embedded in F# that emphasizes readability,
composability, and the ability of end-users to easily create and
manipulate elements of high-quality interactive mathematics
visualizations without needing vector graphics or web development
domain knowledge.

<iframe width="560" height="315" src="https://www.youtube.com/embed/wQ9o7l45fbQ?si=HICi5aN-ErX5naJG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### 11:00AM - Exploring Self-Embedded Knitting Programs with Twine
#### Amy Zhu, Adriana Schulz, Zachary Tatlock

This paper delves into the concept of manufacturing quines, which
explicitly embeds the intricate details of the fabrication process in
the design of an object; the goal is for the programs that manufacture
the object to also produce themselves within the object. We highlight
how concretizing the design process of an object in the real object
can help reconstruct items and remind us of the reality that all
objects must be manufactured, incurring labour and environmental
costs. By drawing inspiration from self-reproducing programs, we
outline a new language design centred around quines for knitting, a
versatile technique in fabric construction, with both historical
significance and recent advances in programmable whole-garment
machines for their manufacture. We show some preliminary results of
using this language design to create knitted quines, and discuss how
this interesting question might be further advanced.

<iframe width="560" height="315" src="https://www.youtube.com/embed/i2aoXy09-g4?si=NlXCzhRhfqolbAaC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### 11:30AM - Homotopy Type Theory for Sewn Quilts
#### Charlotte Clark, Rose Bohrer

This paper introduces PieceWork, an imperative programming language
for the construction of designs for sewn quilt, whose semantics are
inspired by Homotopy Type Theory. The goals of PieceWork include
improving the diversity of sewn designs that can be represented in
computational methods, demonstrating a creative application of
Homotopy Type Theory, and demonstrating that the craft of quilting is
a worthy object of study in programming language theory. We develop an
operational semantics, provide a prototype implementation and
examples, and provide initial theoretical results, among which
development of a type system is preliminary.

<iframe width="560" height="315" src="https://www.youtube.com/embed/A3e5oHR2a5s?si=2IO25XEZ_xr_eSdl" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### 12:00 noon - Demo: Sonic Catalog of Rare Diseases
#### Stephen Taylor, Aditi Kantipuly
  
This 15-20 minute demo will present our work in progress, a sonic
catalog of rare diseases, along with prior work of data-driven music
(fixed media) based on genetic sequences from SARS CoV-2. These
sonifications are created from spreadsheets, imported into Max and
Kyma and processed in various ways.
  
<iframe width="560" height="315" src="https://www.youtube.com/embed/P_Lps1csr7E?si=HYHYusYy3tbCGHXR" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Performance Evening {#performance}

Starts at 7:30pm at the **Raisbeck Auditorium** (2017 Boren Ave); doors
open at 7:00pm.
This is in the glass building to the right of the Raisbeck Performance
Hall. The concert is free and open to the public, but seating may
be limited and conference/workshop attendees have preference.

### As music overheard, as image made light.
#### [Andrea Mazzariello](https://www.andreamazzariello.com/)

In September 2022 I released an album called [*War Footing*](https://www.andreamazzariello.com/work/war-footing). I
subsequently built an installation around it, linking sound to the
transformation of video in a dedicated listening room. As music
overheard, as image made light carries that idea forward. Vocal and
keyboard improvisations drive software designed to analyze, filter,
sample, and re-articulate them, then recombine and manipulate simple
short videos of acrylic-painted color blocks. I wanted to create a
sympathetic ear in the software instrument, a system that would
encourage me to play and sing intentionally and with care. I also
hoped it would support and reward that effort, in both sound and
vision, as well as the efforts of listeners more generally.

<iframe width="560" height="315" src="https://www.youtube.com/embed/fy7dIg965to?si=3t1Zq929YSFtEcvw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Keynote: "Perfectly Imperfect: Music, Math and the Keyboard"
#### [Gloria Cheng](https://schoolofmusic.ucla.edu/people/gloria-cheng/)

As a concert pianist and harpsichordist, I am devoted to extracting
expression and meaning out of the silent abstractions of a musical
score. Behind the preparation for any performance is my stark wonder
at how such innovative, suggestive sonic domains are realized by
composers, literally out of thin air. We’ll explore some basic
mathematic principles that underlie all musical discourse, with a
focus, given time constraints, on Western classical music. With
recorded and live examples from the keyboard, we’ll look at Harmony:
from the acoustical demonstrations of Pythagoras, through the
contentious battles over tunings and temperaments during the Baroque,
to the microtonal experiments of modern times in the work of Harry
Partch and Iannis Xenakis. And Rhythm: another vast realm of
experimentation and invention, how did we get from 2/4 to the
polymeters and irrational meters of Conlon Nancarrow and Thomas Adès?

Looking at music through a mathematical lens is one effort out of many
to understand—though never explain—how this remarkable acoustic
phenomenon can move us to tears.

<iframe width="560" height="315" src="https://www.youtube.com/embed/k_htPyDDIwk?si=jqUKbPc7APPxvOOX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Solo Piano Performance
#### [Gloria Cheng](https://schoolofmusic.ucla.edu/people/gloria-cheng/) (Featured)

<iframe width="560" height="315" src="https://www.youtube.com/embed/hiX79cmHGxk?si=h-uInlVx6Nrvup2d" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Humanity: From Survival to Revival
#### [Cecila Suhr](https://www.ceciliasuhr.com/)

*Humanity: From Survival to Revival*is an award-winning (2023 Best of
Competition Award in interactive media and emerging technologies
category from the Broadcast Education Association) interactive
audio-visual performance work that depicts the transformation of the
dystopian state of humanity to utopianism in both the visual and sonic
realms by including the faces of live audiences as part of the
multimedia performance. Not only do audiences play an interactive
survival game via microphone (sound interactive), but the
collaborative efforts are meant to represent saving humanity through
collective transformation, healing, and renewal. This work will
culminate in a participatory experimental performance where audiences
and live music improvisation synergistically drive the work's visual
storytelling framework.

<iframe width="560" height="315" src="https://www.youtube.com/embed/KvcBtDpGH-s?si=mbnwW5ZpOnn4t9BV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Accelerometers as an Instrument (Featured)
#### [Marcin Paczkowski](http://marcinpaczkowski.com/) 

Performing music is typically associated with various forms of
physical movement. This can include playing an instrument, conducting
an ensemble, or incorporating dance and dramatic elements in staged
productions. With a personal interest in integrating movement into
electronic music performances, I have been actively exploring
different forms of motion sensing, particularly using accelerometers,
within my own musical practice.

I will discuss specific aspects of this technology, with a focus on
the practical implications of expressiveness, reliability, and
technical solutions. Following the presentation, I will perform my
recent piece titled *Here Comes a Candle to Light You to Bed*,
showcasing how these concepts are applied.

<iframe width="560" height="315" src="https://www.youtube.com/embed/oyjfFNdLLW8?si=EM_5JNbssOrJhWWt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Aurora: Goddess of Dawn
#### [Joy Lee](https://www.joyderose.com/)

*AURORA: GODDSS OF DAWN* is an immersive audiovisual live performance
experience inspired by spectacular nature phenomenon “AURORA”, which
is also known as the Roman goddess of dawn, who brings light and
hope. Through this interactive live performance, I would like to
create a fully immersive and fantastical atmosphere with narratives,
sounds, interactive visuals programming and spatial audio system so
that the audience really can experience the breathtaking beauty of
aurora and the magic it creates beyond imagination.  Through creating
a space where the artist’s imagination merges with cutting-edge
technology, I would like to push the boundary of immersive live show
experience.

<iframe width="560" height="315" src="https://www.youtube.com/embed/APrEsUgCfOI?si=VbQKpFF96FaGEXSM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Workshop Organization

**Workshop Chair**: [Mae Milano](https://www.languagesforsyste.ms/) (University of California, Berkeley)

**Program Chair**: [John Leo](http://www.halfaya.org/leo/) (Halfaya Research)

**Performance Chair**: [Kaley Eaton](http://www.kaleylaneeaton.com/) (Cornish College of the Arts)

**Publicity Chair**: [Michael Sperber](https://www.deinprogramm.de/sperber/) (Active Group GmbH)

### Program Comittee

- [Youyou Cong](https://prg.is.titech.ac.jp/people/cong/) (Tokyo Institute of Technology)
- [Visda Goudarzi](https://www.colum.edu/academics/faculty/detail/visda-goudarzi.html) (Columbia College Chicago)
- [John Hui](https://j-hui.com/) (Columbia University)
- [Anton Kholomiov](https://github.com/anton-k)
- [Oleg Kiselyov](https://okmij.org/ftp/) (Tohoku University)
- [Yoshiki Ohshima](https://tinlizzie.org/ohshima/) (Croquet Corporation)
- [Christopher Raphael](https://luddy.indiana.edu/contact/profile/?profile_id=279) (Indiana University)
- [Butch Rovan](http://www.soundidea.org/rovan/index.html) (Brown University)
- [Chung-chieh	Shan](https://homes.luddy.indiana.edu/ccshan/) (Indiana University)
- [Ben Sherman](https://www.ben-sherman.net/)
- [Jeffrey Snyder](https://music.princeton.edu/people/jeff-snyder/) (Princeton University)
- [Andrew Sorenson](https://www.moso.com.au/) (MOSO Corporation)
- [Dima Szamozvancev](https://www.cl.cam.ac.uk/~ds709/) (Cambridge University)
- [Daniel Winograd-Cort](https://www.danwc.com/) (Luminous Computing)
- [Halley Young](https://www.cis.upenn.edu/~halleyy/) (University of Pennsylvania)

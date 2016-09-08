---
layout: default
title: FARM 2016 Performance Evening
active: farm2016
---

## 4th ACM SIGPLAN International Workshop on Functional Art, Music, Modelling and Design

# Live Performances

### [Beverly Hills](http://flower6.jp/), Nara, Japan

#### 24 September 2016, 19:30-21:30

FARM 2016 presents an evening of performances that employ functional programming
techniques in whole or in part, performances that push forward the
state of the art, and presentations of highly-developed practice.

The audio will be generated mostly through functional programming
techniques. Those techniques will be used in live coding and are
present in the generative systems to be presented (with the exception
of Yullippe's ambient/techno live performance accompanying the
performance of a system for generated visuals). The musical genres
represented include art music, noise, experimental music, ambient,
techno, and chiptunes. Various visuals will be presented, ranging from
code and an interpreter in the case of live coding to system
visualization to rendered graphics.

Performances will be presented by the following performers, listed
alphabetically by surname or group name:

- [Renick Bell](#renickbell)
- [Alexandra Cardenas](#alexandracardenas)
- [Atsuro Hoshino](#atsurohoshino)
- [Akihiro Kubota](#akihirokubota)
- [Jay McCarthy](#jaymccarthy)
- [RAW](#raw) (a duo of Selçuk Artut and Alp Tuğan)
- [Gene Shuman with Yullippe](#geneshuman)
- [Atsushi Tadokoro](#atsushitadokoro)

What follows is a list of performers with brief notes edited from
performer submissions about their performances and bios.  More info is
in the [pdf version](programNotes.pdf).

Performance Notes and Bios
==========================

## [Renick Bell](http://www.renickbell.net/doku.php/) {#renickbell}

Renick Bell will do a live-coded performance with his own library, called [Conductive](http://renickbell.net/conductive), for instantiating agent processes and generating patterns which those agents follow. By manipulating those agents, which trigger a sampler or control other agents, a rapidly changing stream of bass, percussion, noise, and tones is improvised according to a rough sketch of the overall performance structure. The sample player was built with [hsc3](https://hackage.haskell.org/package/hsc3), a Haskell client for [SuperCollider](http://audiosynth.com/) by Rohan Drape. Interaction with the system, which is projected for the audience, employs the Glasgow Haskell Compiler Interpreter (ghci), the vim text editor, the xmonad window manager, and the tmux terminal multiplexer.

Bell is a computer musician, programmer, and teacher living in Tokyo, Japan. He is a graduate of the doctoral program at Tama Art University in Tokyo, Japan. His current research interests are live coding, improvisation, and algorithmic composition using open source software.

## [Alexandra Cárdenas](http://cargocollective.com/tiemposdelruido) {#alexandracardenas}

Alexandra Cárdenas will perform through live coding, combining her interests in improvisation, composition, programming, live electronics and traditional music. Alexandra projects her screen for the audience to witness what she is writing on her computer. Using SuperDirt (a [SuperCollider](http://audiosynth.com/) implementation of the Dirt sampler for the TidalCycles programming language) Alexandra creates her own sounds in SuperCollider and sequences them using patterns written in real time with the software [TidalCycles](http://tidalcycles.org/).

Composer, programmer and improviser of music, Cárdenas has followed a path from Western classical composition to improvisation and live electronics. Using open source software, her work is focused on the exploration of the musicality of code and the algorithmic behaviour of music, especially through live coding. Currently she lives in Berlin, Germany and is doing her masters in Sound Studies at the Berlin University of the Arts.

## [Atsuro Hoshino](https://about.me/hoshinoatsuro) {#atsurohoshino}

Atsuro Hoshino will live code audio using GNU Emacs for textual user interface, [SuperCollider](http://audiosynth.com/) for audio synthesis engine, and Scheme code executed in GNU Guile for gluing things together. The Scheme code will use the [rsc3](http://rd.slavepianos.org/?t=rsc3) library to interact with SuperCollider. Sequential events are controlled with a technique called temporal recursion. Like any other recursive function, temporal recursion is a recursive function defined in Scheme, but taking a time stamp as an argument. This form enables asynchronous updates of the body of a function without interrupting audio events sent to synthesis engine.

Hoshino is a software engineer in Tokyo, Japan who since university has been playing with various computer music languages. After working with common development languages at a startup company, he encountered Haskell and fell in love with it, though his recent interest is growing toward the LISP language family.

## [Akihiro Kubota](https://www.youtube.com/user/hemokosa?spfreload=10) {#akihirokubota}

Akihiro Kubota will perform a new kind of sound poetry using sound data from the world’s first art satellite, [ARTSAT1:INVADER](http://artsat.jp). INVADER was equipped with Morikawa, an on-board mission computer compatible with the Arduino open-source hardware platform. Morikawa’s missions included algorithmic generation and transmission of synthesized voice, music and poems, capturing and transmitting of image data and communicating with the ground through a chatbot program. The fragmented sound data is reconstructed as a live coding performance using [TidalCycles](http://tidalcycles.org/). Kubota finds the flexible and multiple notations of this functional language to be very useful for real-time (live coding) performance.

Kubota is a professor of the Art and Media Course in the Information Design Department at Tama Art University in Tokyo, Japan. He earned his doctorate at the University of Tokyo in the Faculty of Engineering. His projects, such as the ARTSAT Project (the world's first nano art satellite and 3D-printed artwork to be successfully launched into deep space) incorporate the diverse fields of bio art, digital fabrication, sound performance and the creation of original musical instruments.

## [Jay McCarthy](https://jeapostrophe.github.io/home/) {#jaymccarthy}

Jay McCarthy will present a performance of Bithoven, a composer of approximately 1.079363e+239 different compositions based on four-part harmony and basic chord progressions. It is combined with a purely functional audio synthesis engine based on the Ricoh RP2A03, found in the 1985 Nintendo Entertainment System (NES). The synthesis engine is parameterized over a band of instruments and styles of play, so that each composition can be played in one of approximately 4.22234e+41 different arrangements or "NEStrations". The music is thought to be plausible to most listeners as being hand-made in the era of the RP2A03.

Jay McCarthy is an associate professor of computer science at the University of Massachusetts at Lowell and a member of the Racket development team. He completed a Ph.D. at Brown University in the Computer Science Department. His priorities are programming language expressiveness, formal verification, CS education, and family.

## [RAW](http://vimeo.com/rawlivecoding) ([Selçuk Artut](http://www.selcukartut.com/), [Alp Tuğan](http://www.alptugan.com/)) {#raw}

The duo of Selçuk Artut and Alp Tuğan, as RAW, will perform using three laptops: one dedicated to the display of visuals generated with openFrameworks and the other for [Supercollider](http://audiosynth.com/) and [Sonic Pi](http://tidalcycles.org/). They will use a video switcher to switch between the two coding screens, the visuals, and a GoPro camera. Additional audio will be produced on an Arturia Minibrute, an analog synthesizer.

Selçuk Artut lives in Istanbul, Turkey, where he spends much of his time philosophising human-technology relations. An author of four books in the past, his artistic activities are mainly focused on contemporary art practices based on technological embodiments. With an academic background in mathematics and sonic arts, he received his PhD on Philosophy of Media Communications from the European Graduate School in Switzerland.

Alp Tugan lives in Istanbul. Tugan is an interaction designer focusing on creative coding for his artistic productions. He has received his MA on Visual Communication Design from Sabanci University, Istanbul.

## Gene Shuman and [Yullippe](https://yullippe.bandcamp.com/) {#geneshuman}

Gene Shuman will present a visual performance with his system called [Epimorphism](http://www.epimorphism.com/), an art project intended to simulate video feedback. It is written in PureScript, a strict dialect of Haskell which compiles to Javascript and runs in web browsers supporting WebGL. Video feedback is a traditionally analog art form used since the 1960s to create recursive and self similar video animations. Despite feeling a lack of a particular domain-specific justification for using functional programming, Shuman argues that the use of functional programming for this project shows the inherent benefits of functional programming: faster and more stable development of software which is easier to reason about and to return to after significant developmental pauses.

Yullippe will accompany the visuals with a live electronic music performance of ambient and techno using a Moog Mother 32 synthesizer and DAW software.

Gene Shuman is a software engineer in the San Francisco area, where he moved in 2007 after studying mathematics, computer science, and electrical engineering at the Massachusetts Institute of Technology. In his spare time he is an amateur musician, aspiring artist, and world traveler. His current interests include the convergence of technology and the arts, meditation, and cats.

Yullippe (Yuri Urano) is a musician from Osaka. She has been performing as Yullippe since 2012. She has released two albums and performs frequently at electronic music events in Japan.

## [Atsushi Tadokoro](http://yoppa.org/) {#atsushitadokoro}

Atsushi Tadokoro will perform a piece called Synesthesic Stream, a live coding audiovisual performance using [TidalCyles](http://tidalcycles.org/). All audio and visuals are generated in real-time through improvisation in code. In the work, the sounds gradually change, and the visuals follow the sounds according to the performer's "synesthesic" sense. The visuals are generated by generating control signals in TidalCycles which are sent via OSC using Tadokoro's own library to a video synthesizer which he has developed using openFrameworks.

Atsushi Tadokoro is a creative coder, artist, algorithmic audio visual improviser, and programmer. In 2010, he wrote a book “Beyond Interaction” which was the first openFrameworks handbook in the world. He is a lecturer in creative programming at Tama Art University in Tokyo, Japan and the Tokyo University of Arts.

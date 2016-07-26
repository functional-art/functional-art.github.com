---
layout: default
title: "FARM 2016 Demo Proposal: Klangmeister"
active: farm2016
---

# Klangmeister

## Chris Ford, ThoughtWorks

Live music coding, like other forms of programming, can require a lot of
setup to get started. That’s a shame – many newcomers lose their enthusiasm
as they battle editor configuration and hardware quirks. [Klangmeister](https://ctford.github.io/klangmeister/)
attacks this problem by hosting a live coding environment in the most
ubiquitous programming environment in the world. Users are invited to
design synthesisers and compose melodies with Lisp – without leaving the
comfort of their browser.

There are already wonderful live-coding environments like
[Gibber](http://gibber.mat.ucsb.edu/) and
[LiveCodeLab](http://livecodelab.net/). Klangmeister's primary
contribution is its focus on functional programming techniques as a
way make music theory legible. It is able to offer this by embedding a
[ClojureScript](https://github.com/clojure/clojurescript) compiler in
the browser and encapsulating the Javascript Web Audio API in a purely
functional wrapper. Sufficiently clear musical code serves a dual
purpose: the production of music and also the explanation of
music. Klangmeister attempts to follow Knuth's advice that we should
"concentrate on explaining to human beings what we want a computer to
do."

In this demo, I'll explain how Klangmeister makes synthesis design
clear and accessible. I will show how music theoretical concepts like
scales and time signatures can be elegantly modelled using higher-order
functions. Finally I'll switch from theory to praxis and livecode a piece
to put Klangmeister through its paces.

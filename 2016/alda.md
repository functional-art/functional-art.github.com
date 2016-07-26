---
layout: default
title: "FARM 2016 Demo Proposal: Alda"
active: farm2016
---

# Demo: Alda: A text-based music composition language

## Dave Yarwood

[Alda](https://github.com/alda-lang/alda) is a music programming language that offers a way to describe a musical composition in the form of a text document. The language has an easy-to-use syntax that is well-suited for both musicians with little-to-no programming knowledge and programmers with little-to-no music theory knowledge. Alda is inspired by existing music/audio programming languages such as MML, LilyPond and ChucK, but aspires to be a general-purpose music programming language that gives composers the power to create music in many different ways, all while maintaining simplicity and ease of use.

In this demo session, I will give a brief introduction to Alda and its purpose. I will provide a lightning-fast tutorial, demonstrating the basic features of the language, accompanied by live audio from Alda's "Read-Evaluate-Play-Loop" (REPL). As I type each snippet of Alda code into the REPL, the audience will hear the result. I will then show and play examples of Alda scores, demonstrating some of the artistic possibilities that can be achieved when writing music as Alda code. This will include an explanation of how one can build a musical score out of modular components, an idea which is at the heart of functional programming, and one which I believe can also be applied to composing a musical score. I will close with a short discussion of the current status of the Alda project and the direction in which we are headed in future releases.

As a classically trained musician and composer, I often find myself needing to jot down musical phrases or ideas. When this happens, ideally, I'm in a place where I have a piano or a guitar handy to help me turn my abstract ideas into concrete notes and chords, as well as music staff paper so that I can write them down before I lose them. But a lot of the time, I don't have these things available. In 2012, it occurred to me that it would be much more convenient to be able to compose music in a text editor and hear the result in an interactive way. No matter where I am, I almost always have access to a text editor -- if not on my laptop computer, then on my smartphone -- and either of these devices is perfectly capable of interpreting the notes and chords I have written as music and playing them back for me, provided that I write them in a regular way that a computer can understand. This was my impetus for designing Alda.

At the time of writing, Alda can be used to play musical scores, in real-time, using the cross-platform MIDI synthesizer built into the Java Virtual Machine. On the road map is support for importing form and exporting to existing formats like [MusicXML](http://www.musicxml.com/), [LilyPond]((http://lilypond.org/)), and MIDI files, and exporting to WAV/MP3 and sheet music. I have carefully designed Alda's components to be modular, so that it will be relatively easy to add these features without having to rewrite much, if any, of the codebase. Also on the road map is the ability to leverage this modularity to enable programmers to "plug and play" their own alternate versions of the Alda interface\*, server process, parser, core library, and sound engine.

\* _Currently only a command-line client exists, but alternate implementations such as a GUI or web interface would be relatively easy to implement._

The basics of Alda's syntax were primarily influenced by [Music Macro Language (MML)](https://en.wikipedia.org/wiki/Music_Macro_Language), in particular the modern variety of MML that has been used by chiptune musicians since the 2000s to create music playable by the sound chip of the Nintendo Entertainment System. I used to be one of those chiptune musicians, and during the time that I composed NES music by writing MML, I gained an appreciation for its expressive, user-friendly syntax. At the time, I did not consider myself much of a programmer, and it inspired me that in spite of that, I was able to get a lot of mileage out of a very simple language and easily create a variety of interesting "scores." In designing Alda, it has been my goal to achieve the same degree of expressiveness; to allow musicians who might not necessarily be programmers to compose music by writing code.

The syntax for Alda notes is identical to that of MML: a lowercase letter followed by (optionally) any number of pluses and minuses representing flats and sharps, and then (optionally) a number indicating the duration value of the note. For example, `c+4` indicates a C-sharp quarter note. When the duration value is omitted, a default value of the last specified note value is used. For example, `c4 c c c | c8 c c c c c c c` is a way of writing one measure containing four quarter notes, followed by another measure containing eight eighth notes. MML also has the concept of "sticky" duration, but handles it differently in that there is a special operator, `l` which is used to explicitly specify the default duration of the notes that follow. The same example with four quarter notes and eight eighth notes can be expressed in MML as `l4 c c c c | l8 c c c c c c c c`.

The "Alda way" of expressing "sticky" duration values is truthfully the "LilyPond way"; [LilyPond](http://lilypond.org/), a language used by programming-savvy to composers generate professional-quality sheet music, was also largely influential in the design of Alda's syntax. In fact, I think would be fair to say that Alda's syntax is a hybrid of MML's and LilyPond's, with additional convenient features designed to be both aesthetically pleasing and easy to learn. For example, chords are expressed in Alda as any number
of notes, separated by forward slashes; a C major triad can thus be written `c/e/g`.

Alda's way of expressing octaves is also borrowed from MML. Whereas in some other music programming languages and music libraries, the octave of a note is syntactically tied to the note (e.g. `F#4` might represent the note F-sharp in octave 4), MML treats octave as another "sticky" setting, providing the `<` and `>` operators as a quick way to move down and up an octave, respectively, as well as the `oN` syntax (e.g. `o3`), which can be used to move directly to a specific octave `N`. I chose to mirror these octave syntax ideas in Alda for reasons of aesthetics and convenience. In the majority of music programming languages I have seen, there are three main components to the note "model": the note name (including any accidentals, e.g. "G", "Eb"), the octave number (often according to scientific pitch notation), and the duration value (e.g. quarter, dotted eighth). Most music programming languages appear to be in agreement that including all three of these things in the syntax for a single note is too cumbersome to be practical, and so at least one of the three values must be sacrificed for the sake of usability. In my experience writing chiptunes using MML, I found that it was quite practical to have separate operators to change octaves between notes, as opposed to specifying the octave of every note. I found that in general, I would need to change the note duration more often than I would need to change octaves, so I believe that tying a note's duration (as opposed to its octave) to the syntax of a note is the optimal way to juggle these three common aspects of the note model.

In designing Alda, I have spent a lot of time thinking about devising a syntax that is both practical and easy enough to pick up that it is accessible to those with little prior exposure to programming. At the same time, however, the "programmer in me" has an interest in making the language as flexible and powerful as possible, so that score writers who have a deeper understanding of programming concepts can write scores whose elements are generated algorithmically. Alda is implemented in Clojure, a general-purpose Lisp language that runs on the Java Virtual Machine (with its own dynamic runtime) and carries a language design steeped in the functional programming paradigm. Because Clojure is a Lisp, and thanks to the metaprogramming concept of "code as data", we are able to represent a musical score as a domain-specific Lisp S-expression. This Lispy transparency not only allows Clojure programmers to use Alda as a library in their Clojure projects, but also enables composers to write music-generating Clojure code within an Alda score.

Alda's connection to functional programming begins with the view of a musical score as a series of logical transformations. There is an initial state, the "empty score"; this is modeled in Alda as a Clojure map (an immutable, associative data structure) that has a small number of fields with initial values. For example, there is an "instruments" key whose value represents all of the instrument parts being used in the score; there is a "current-instruments" key whose value is the set of instruments that are currently "active" (meaning the user is currently editing their parts, adding notes and chords and so on); there is an "events" key whose value is a set of events (for example, notes) to be performed by the sound engine, each event associated with an offset in milliseconds, so that the sound engine knows when to perform it. The Alda parser essentially emits a list of transformations to be applied to the score; the process of starting with an initial score state and ending with a finished score is implemented as a `reduce` operation, using the "empty score" state as an initial value and reducing an `update-score` function over the sequence of transformations emitted by the parser. `update-score` is a function that takes two arguments: a score state and an "event" which transforms the score in some way, and returns an updated score. For example, a "part event" determines which existing instrument part to use (or creates a new one, if the instrument hasn't yet been added to the score), adds any new instruments to the "instruments" field of the score map, and resets the value of the "current-instruments" field to the instrument part(s) that are now active.

The aforementioned "events" or "transformations" are the basis for algorithmic music generation using inline Clojure code within an Alda score. All of these events, which include notes, chords, event sequences, and scheduled functions to be executed at performance time, are exposed in the Alda user namespace as functions that are available to use when writing inline Clojure code. These functions are in fact the same functions that are executed behind-the-scenes when ordinary Alda code is parsed and executed.

As an illustrative example, the following two Alda scores are equivalent:

```
piano:
  c8 d e f g
```

```
piano:
  (note (pitch :c) (duration (note-length 8)))
  (note (pitch :d))
  (note (pitch :e))
  (note (pitch :f))
  (note (pitch :g))
```

The second score shows that instead of writing out the five eighth notes C through G in the "native" Alda syntax, we can go down a level and write the equivalent Clojure code that is generated by the parser when parsing the Alda syntax shown in the first score. Each "note" S-expression evaluates to an Alda "event" that can be consumed by the `update-score` reducing function.

It is important to note that `update-score` has special logic for the case that it receives a sequence of events, instead of a single event, as an argument. When this happens, it performs an internal reduce over the events. This is useful because it allows the score writer to write Clojure code that results in a list of events, rather than a single event, and the resulting events will be spliced into the score seamlessly. This makes it convenient to use standard functional programming techniques such as `map`.

Here is a simple example score using `map`:

```
piano:
  (map (fn [letter] (note (pitch letter)))
       [:c :d :e :f :g :f :e :d :c])
```

This example uses a hard-coded vector of notes as a starting point, but one could also derive the content of an algorithmically generated score by more interesting means, such as parsing a string of text from a file, generating random numbers, or scraping a website in real time and analyzing the results.

For more information on Alda, including previous writings/talks:

  - [project repo with releases and documentation](https://github.com/alda-lang/alda)
  - [example scores](https://github.com/alda-lang/alda/tree/master/examples)
  - [an introduction + tutorial](http://blog.djy.io/alda-a-manifesto-and-gentle-introduction/)
  - [video of a talk I gave on Alda in February 2016](http://blog.djy.io/alda-a-music-programming-language-built-with-clojure/)
  - [some FP-related discussion of the implementation of Alda](http://blog.djy.io/alda-for-clojurists/)


# Representation of Musical Notation in Haskell

### Edward Lilley (University of Cambridge, UK)

In this demo I demonstrate a particular computer-based formalisation
of musical notation. I apply this representation to historical musical
works written in non-standard temperaments, with a view to accurate
playback while retaining a completely flexible choice of temperament.

While almost all modern applications assume the use of equal
temperament with twelve identical semitones (so-called 12-TET),
compositions from the Renaissance and Baroque periods make no such
assumptions. Many use some form of meantone, such as the quarter-comma
meantone; or even more exotic equal temperaments, such as a division
of the octave into nineteen semitones (19-TET). Many keyboards of the
era are "enharmonic", i.e. they split their accidentals [1,5]. It is
assumed that highly chromatic works (e.g. Girolamo Frescobaldi,
Michelangelo Rossi [7,8]) were written with such instruments in
mind. Any meantone temperament or any equal temperament with >12
semitones requires these "split" notes, so that for example F sharp is
played with a different key to G flat. While more general keyboards
continue to be developed (sometimes called "isomorphic" keyboards), a
historically-accurate realisation of a given composition still
requires a painstaking manual choice of notes. To remedy this
situation I demonstrate a program that parses musical notation and
plays back the result with a fully general choice of temperament.

All of the most commonly-used tuning systems, the so-called "regular"
temperaments [4], have the mathematical structure of a free Abelian
group. This can be thought of as a lattice, reminiscent of Euler's
Tonnetz [6], in either two dimensions (in the case of syntonic or
meantone temperaments) or one dimension (in the case of equal
temperaments).

I argue on purely syntactical grounds that the notation system for
notes and intervals lends itself to this lattice structure, even
before a particular temperament has been chosen. When consistently
represented this way, the set of notes and intervals is closed under
the operations of interval addition/subtraction (this is not the case
for most commonly-used computer music systems, such as Euterpea,
music21, Sibelius etc.).

Concretely, each interval is represented in terms of two basis
intervals, which can be any two linear-independent intervals. One
choice of basis (among infinitely many) is the augmented unison (A1)
and the diminished second (d2); intuitively the d2-part of any
interval corresponds to its "number", and the A1-part to its
augmentation/diminution.

The task of translating the notated music into specific frequencies of
sound is then considerably simplified: for syntonic temperaments, any
two intervals can be assigned arbitrary frequency ratios -- though
typically the octave is always fixed to a ratio of 2 -- and the ratios
of all the other intervals then follow automatically, from some simple
two-dimensional linear algebra; and, for equal temperaments, a
projection onto a one-dimensional subspace is performed, with one
interval (the "comma") mapping to a unison, with different
octave-divisions corresponding to different choices of comma
(e.g. 12-TET follows from using the diminished 2nd as the comma).

Because my focus is on music from the C16th and C17th, the
representation of larger musical structures (phrases, entire
compositions, etc.) is geared towards polyphony: each phrase is a
linked list, and each piece of music consists of a branching "rose
tree" data structure, with phrases as the leaves. This simplifies the
implementation of the demonstration program \[3\] (written in Haskell),
which parses input from Lilypond files (using Parsec), performs the
transformation to the appropriate tuning system, and produces audio
output (using Csound-expression).

I will give an audio demonstration [2] of music written in traditional
notation, but intended to be played using certain exotic temperaments:
in particular, the piece 'Seigneur Dieu ta pitié' by Guillaume de
Costeley (C16th), written for a keyboard with 19 keys per octave.

**References and links**

- [1] Denzil Wraight & Christopher Stembridge, "Italian split-keyboard instruments with fewer than nineteen divisions to the octave" doi:10.5642/perfpr.199407.02.08
- [2] Demonstration audio [https://soundcloud.com/ejlflop/sets/demo-of-abstractmusic](https://soundcloud.com/ejlflop/sets/demo-of-abstractmusic)
- [3] The program being demonstrated https://github.com/ejlilley/AbstractMusic
- [4] https://en.wikipedia.org/wiki/Regular_temperament
- [5] https://en.wikipedia.org/wiki/Enharmonic_keyboard
- [6] https://en.wikipedia.org/wiki/Tonnetz
- [7] See e.g. Frescobaldi's Elevation Toccatas, Rossi's "Toccata Settima"
- [8] Naomi J. Barker, "Frescobaldi keyboard music" doi:10.1093/em/car096



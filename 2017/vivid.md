
# Vivid: Sound synthesis with Haskell and Supercollider

### Thomas Murphy (USA)

Vivid is a Haskell library for music creation and sound synthesis, using the SuperCollider sound synthesis engine for real-time "rendering" of audio. Vivid allows users to synthesize and modify audio live in real time, or to render audio files of compositions in a fraction of real time.

This demonstration will be an overview of both Vivid's usage and features of its core design. Vivid uses many features of Haskell, both to enable safety and expressiveness and to regain features more commonly found in dynamic musical languages.

A design goal of Vivid is to be ergonomic enough to be used on its own, but unobtrusive enough to be used as a backend for higher-level musical structures and libraries. Vivid provides interfaces for both high- and low-level control, and has built-in notions of time (both sample-level and musical), parallelism, audio stream graphs, multichannel input and output, audio recording, and more.

This demonstration will show practical usage of Vivid, intended for people with or without familiarity with sound synthesis. It will also be an opportunity to discuss both successes and challenges (and open questions!) of fitting Haskell to the domain of musical livecoding.

**Link to the software:**
[http://hackage.haskell.org/package/vivid](http://hackage.haskell.org/package/vivid)

{-# LANGUAGE DataKinds, ExtendedDefaultRules #-}

import Vivid

example0 =

   play $ 0.5 ~* sinOsc (freq_ 440)




----------------





example1 = play $ do
   freq <- midiCPS 45
   s0 <- lfSaw (freq_ freq)
   s1 <- lfSaw (freq_ (freq ~* 1.005))
   s2 <- lpf (freq_ freq, in_$ s0 ~+ s1)
   0.5 ~* s2





-----------------

example2 :: SynthDef '["note"]
example2 =
   sd (0 ::I "note") $ do
      freq <- midiCPS (V::V "note")

      -- Same
      s0 <- lfSaw (freq_ freq)
      s1 <- lfSaw (freq_ (freq ~* 1.005))
      s2 <- lpf (freq_ freq, in_$ s0 ~+ s1)

      s3 <- 0.5 ~* s2
      out 0 [s3, s3]






-----------------


polyRhythm = do
   fork $ do
      s <- synth example2 (45 ::I "note")
      wait (3/2)
      set s (47 ::I "note")
      wait (3/2)
      free s
   s <- synth example2 (45+12 ::I "note")
   wait 1
   set s (50+12 ::I "note")
   wait 1
   set s (45+12 ::I "note")
   wait 1
   free s
      


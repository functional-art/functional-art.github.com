> {-# LANGUAGE Arrows #-}

> module FARMDemo where
> import Euterpea
> import System.Random
> import Control.Arrow

Examples for a Eutepea FARM Demo
September 28, 2013

Basics
======

Examples can be played by typing, for example, "play b0" at the command prompt.

C major scale:

> b0 = c 4 en :+: d 4 en :+: e 4 en :+: f 4 en :+: -- sequential composition
>      g 4 en :+: a 4 en :+: b 4 en :+: c 5 en     -- C major scale
> b1 = b0 :+: revM b0
> b2 = tempo 2 b1              -- tempo change
> b3 = transpose 4 b2          -- transposition
> b4 = instrument Marimba b0   -- default instrument is AcousticGrandPiano
> b5 = instrument VoiceOohs b0
> b6 = b2 :=: b3               -- parallel composition

> b251 :: Music Pitch          -- ii-V-I progression in cMajor
> b251 = let dMinor = d 4 hn :=: f 4 hn :=: a 4 hn
>            gMajor = g 4 hn :=: b 4 hn :=: d 5 hn
>            cMajor = c 4 wn :=: e 4 wn :=: g 4 wn
>        in  dMinor :+: gMajor :+: cMajor

All of the above have type "Music Pitch".

Through the power of functional programming
===========================================

(back to slides)

> f0  = timesM 8          (c 4 en :+: enr)
> f1  = takeM  2 (repeatM (c 4 en :+: enr))
> f2  = b0 /=: repeatM (c 4 en :+: enr)
> b0' = line (map (\n->n 4 en) [c,d,e,f,g,a,b]) :+: c 5 en

  ssfMel :: Music Pitch
  ssfMel = line (l1 ++ l2 ++ l3 ++ l4)
    where l1 = [trilln 2 5 (bf 6 en), ef 7 en, ef 6 en, ef 7 en ]
          l2 = [bf 6 sn, c 7 sn, bf 6 sn, g 6 sn, ef 6 en, bf 5 en ]
          l3 = [ef 6 sn, f 6 sn, g 6 sn, af 6 sn, bf 6 en, ef 7 en ]
          l4 = [trill 2 tn (bf 6 qn), bf 6 sn, denr ]

> f3 = instrument Flute ssfMel

(Musical) Performance
=====================

A Music value is a data structure.  Try typing "b0" instead of "play b0".

The "play" function converts the data structure into MIDI.  But in between
is an abstract notion of "Performance". 

(back to slides)

> m0 = c 4 en :=: e 4 en                    -- \ should be commutative
> m1 = e 4 en :=: c 4 en                    -- / with respect to :=:
> p1 = m0 == m1                             -- not equal as data structures
> p2 = toPerformance m0 == toPerformance m1 -- but equal as performances

Leads to an "algebra of music".

Dynamics, Articulations, and Ornamentations
===========================================

Musical phrases can be embellished:

> b0a = phrase [Art (Legato   (4/3))] b0
> b0b = phrase [Art (Staccato (1/2))] b0
> b0c = phrase [Dyn (Diminuendo 0.5)] b0
> b0d = phrase [Dyn (Loudness 64), Dyn (Crescendo 1)] b0

Key point: "Performance" is not just a theoretical concept.
It has practical applications, e.g. interpreting Legato and Staccato.

In addition, HOW the annotations are interpreted depends on the PLAYER.  
A piano player will interpret legoto differently than a violin player, etc.
Eutperpea allows you to define your OWN players -- it is part of the context.

More sophisticated example:
"jazzMan" simulates a "swing feel", and is just 12 lines of code.

Try "take5s".
Now try "take5j".

> take5s = playA myMap defCon take5
> take5j = playA myMap defCon (player "JazzMan" take5)

> myMap "JazzMan"     = jazzMan
> myMap x             = defPMap x

Stochastic Processes
====================

Easy if you understand random numbers in Haskell.

> rands1 = randomRs (0,30) (mkStdGen 42) :: [AbsPitch]
> r1 = instrument Vibraphone $ line $
>      take 64 $ map (\r-> note sn (pitch (r+60))) rands1

> walk p (r:rs) = p : walk (p+r) rs

> rands2 = randomRs (-4,4) (mkStdGen 20) :: [AbsPitch]
> r2 = instrument Vibraphone $ line $
>      take 64 $ map (\r-> note sn (pitch r)) (walk 70 rands2)

> dia = [0,2,4,5,7,9,11] ++ map (+12) dia :: [AbsPitch]

> rands3 = randomRs (-2,2) (mkStdGen 40) :: [AbsPitch]
> r3 = instrument Vibraphone $ line $
>      take 64 $ map (\r-> note sn (pitch (dia!!r))) (walk 40 rands3)

Algorithmic Computation
=======================

Just one example: self-similar music.

(back to slides)

> ttm = tm :=: transpose 5 (revM tm)
>     where tm = instrument Vibraphone (ss m 4 50 20)
>           m  = [(1,2),(1,0),(1,5),(1,7)]

> data Cluster  = Cluster SNote [Cluster]
> type SNote    = (Dur,AbsPitch)

> selfSim      :: [SNote] -> Cluster
> selfSim pat  = Cluster (0,0) (map mkCluster pat)
>     where mkCluster note =
>             Cluster note (map (mkCluster . addMult note) pat)

> addMult (d0,p0) (d1,p1)  = (d0*d1,p0+p1)

Musical User Interface (MUI)
----------------------------

Uses arrow-based FRP design.

> ui0  = hiSlider 1 (0,100) 0 >>> arr pitch >>> display
> mui0 = runUI "Simple MUI" ui0

> ui3 = proc () -> do
>     ap <- title "Absolute Pitch" (hiSlider 1 (0,100) 0) -< ()
>     title "Pitch" display -< pitch ap
>     uap <- unique -< ap
>     midiOut -< (0, fmap (\k-> [ANote 0 k 100 0.1]) uap)
> mui3 = runUI "Pitch Player" ui3

"midiOut" is a "virtualized real-world object".

"Bifurcate Me Baby" (Gary Lee Nelson)

(back to slides)

> bifurcate = runUIEx (300,500) "Bifurcate!" $ bifurcateUI

> grow      :: Double -> Double -> Double
> grow r x  = r * x * (1-x)

> bifurcateUI = proc _ -> do
>     t  <- time -< ()
>     f  <- title "Frequency" $ withDisplay (hSlider (1, 10) 1) -< ()
>     r  <- title "Growth rate" $ withDisplay (hSlider (2.4, 4.0) 2.4) -< ()
> 
>     tick <- timer -< (t, 1.0 / f)
>     pop <- accum 0.1 -< fmap (const (grow r)) tick
>     _ <- title "Population" $ display -< pop
>     midiOut -< (0, fmap (const (popToNote pop)) tick)

> popToNote x =  [ANote 0 n 100 0.05] 
>                where n = 30 + truncate (x * 60)

Sound Synthesis
===============

(back to slides)

========================================================================

> toPerformance m = perform1 defPMap defCon (mMap (\p->(p,[])) m) 

> perform1 :: PMap a -> Context a -> Music a -> Performance
> perform1 pm 
>   c@Context {cTime = t, cPlayer = pl, cDur = dt, cPch = k} m =
>   case m of
>      Prim (Note d p)           ->  playNote pl c d p
>      Prim (Rest d)             ->  []
>      m1 :+: m2                 ->  
>                let c' = c {cTime = t + dur m1 * dt}
>                in  perform1 pm c m1 ++ perform1 pm c' m2
>      m1 :=: m2                 ->  merge1  (perform1 pm c m1) 
>                                            (perform1 pm c m2)
>      Modify (Tempo r)       m  ->  perform1 pm (c {cDur = dt / r})    m
>      Modify (Transpose p)   m  ->  perform1 pm (c {cPch = k + p})     m
>      Modify (Instrument i)  m  ->  perform1 pm (c {cInst = i})        m
>      Modify (KeySig pc mo)  m  ->  perform1 pm (c {cKey = (pc,mo)})   m
>      Modify (Player pn)     m  ->  perform1 pm (c {cPlayer = pm pn})  m
>      Modify (Phrase pa)     m  ->  fst (interpPhrase pl pm c pa       m)

merge :: Performance -> Performance -> Performance

> merge1 []          es2         =  es2
> merge1 es1         []          =  es1
> merge1 a@(e1:es1)  b@(e2:es2)  =  
>   if e1 < e2  then  e1  : merge1 es1 b
>               else  e2  : merge1 a es2

---

First part of "Take Five", by Dave Brubeck:

> tune = map ($ en) [bf 4, ef 5, gf 5, af 5, a 5, bf 5, a 5, af 5] ++ 
>        [gf 5 qn, bf 4 qn, df 5 qn, ef 5 (3/4)] ++
>        [f 5 en, ef 5 en, df 5 qn, ef 5 (3/4)] ++
>        [df 5 en, bf 4 en, af 4 qn, bf 4 (3/4)]

Bass lines:

> bst = cut (5*8/4) $ repeatM $ 
>       line [ef 3 qn, enr, ef 3 en, enr, ef 3 en, gf 3 qn, af 3 qn,
>             bf 3 qn, enr, bf 3 en, enr, bf 3 en, af 3 qn, gf 3 qn]
> bse = line [ef 3 qn, enr, ef 3 en, enr, ef 3 en, bf 3 qn, ef 3 qn]

Shorthands for some percussion values.

> hh8 = perc PedalHiHat en
> bd8 = perc BassDrum1 en
> sn8 = perc ElectricSnare en

Hi-hat groove:

> hh = cut (5*9/4) $
>      repeatM $ line [hh8, enr, hh8, hh8, hh8, enr, hh8, enr, hh8, enr]

Bass drum groove:

> bd = cut (5*9/4) $
>      repeatM $ line [bd8, enr, enr, bd8, enr, enr, sn8, enr, enr, enr]

Piano groove:

> pn = cut (5*9/4) $ repeatM $
>      line [ef 4 en, enr, enr, ef 4 en, enr, ef 4 en, df 4 en, 
>            ef 4 en, ef 4 en, ef 4 en]

> bass = instrument AcousticBass $ Modify (Phrase [Dyn (Loudness 90)]) 
>          (bst :+: bse)
> drums = instrument Percussion $ (hh :=: bd)
> sax   = instrument SopranoSax $ Modify (Phrase [Art (Staccato (9/10))])
>           (rest (3/4) :+: line (tune++ tune))
> pia   = instrument AcousticGrandPiano $ 
>           Modify (Phrase [Art (Staccato (1/4)), Dyn (Loudness 70)]) pn

> take5  = {- tempo (3/2) $ -} bass :=: drums :=: sax :=: pia

---

> jazzMan = fancyPlayer {pName = "JazzMan",
>                        playNote = swingNote}

> swingNote :: NoteFun (Pitch,[NoteAttribute])
> swingNote c@Context{cTime=ct, cDur=dt} ndur a =
>     let playN = playNote fancyPlayer
>         beats = ct/(dt/4)
>         diff  = beats - fromIntegral (floor beats)
>     in  if ndur == en 
>         then case diff of
>                0   -> playN c (1/6) a      -- (2/3)*(1/4) = 1/6
>                0.5 -> playN c{cTime = ct + (dt/24)} (1/12) a 
>                _   -> playN c ndur a       -- (1/3)*(1/8) = 1/24
>         else playN c ndur a

---

> simToMusic = line . map mkNote
>   where mkNote (d,ap)  = note d (pitch ap)

> ss pat n tr te = 
>    transpose tr $ tempo te $ simToMusic $ fringe n $ selfSim pat

> fringe 0 (Cluster note cls)  = [note]
> fringe n (Cluster note cls)  = concatMap (fringe (n-1)) cls

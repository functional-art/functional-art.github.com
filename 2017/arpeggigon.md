
# The Arpeggigon: A Functional Reactive Musical Automaton

### Henrik Nilsson (University of Nottingham, UK)

The Arpeggigon is an interactive cellular automaton for composing groove-based music. It is implemented in Haskell using the frameworks Functional Reactive Programming (FRP) and Reactive Values and Relations, demonstrating in particular how FRP and its hybrid capabilities aligns with the temporal and declarative nature of music, and how these frameworks facilitates implementing an interactive musical application. The Arpeggigon is a software implementation of an extended version of the Reactogon. It is based around a hexagonal grid laid out as a Harmonic Table where moving one step in each of the six possible directions corresponds to a musically meaningful interval. The automaton is configured by placing different types of tokens on the grid. When the automaton runs, so called play heads bounce between these tokens in a pinball-like manner. Whenever a play head hits a token, a note corresponding to the position of the token on the grid is (usually) played, and some action corresponding to the type of the token is carried out, such as sending the play head in a new direction or splitting it into several play heads. The configuration can be changed on the fly, while the automaton is running, which is one way in which the Arpeggigon can be performed live.

The demo first explains the Arpeggigon as such, and it will then highlight some aspects of the implementation that illustrates how functional programming in general and FRP and Reactive Values and Relations in particular are helpful for implementing interactive musical applications.

A video shoing the Arpeggigon canbe found here: [https://www.youtube.com/watch?v=v0HIkFR1EN4](https://www.youtube.com/watch?v=v0HIkFR1EN4)


**Link to the software:**
[https://gitlab.com/chupin/arpeggigon](https://gitlab.com/chupin/arpeggigon)

<br>
<center>
![](/2017/arpeggigon_rsrc/arpeggigon.png)
</center>
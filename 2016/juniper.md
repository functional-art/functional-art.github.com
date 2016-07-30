---
layout: default
title: "FARM 2016 Demo Proposal: Juniper"
active: farm2016
---

# Demo: Juniper: A Functional Reactive Programming Language for the Arduino

## Caleb Helbling and Samuel Z Guyer (Tufts University)

In this presentation, we will discuss the design, use, and implementation of
Juniper: a functional reactive programming language (FRP) targeting the Arduino
and related microcontroller systems. Juniper provides a number of high level
features along with a standard library which offers many useful FRP signal
processing functions. Juniper is translated to standard C++ and compiled with
the existing Arduino development tools, allowing Juniper programs to fit on
resource-constrained devices, and enabling seamless interoperability with
existing C++ libraries for these devices. The Juniper language is still under
development at Tufts University. While the core of the language is now stable,
new language features are still being added to enhance usability.

The maker movement is an umbrella term encompassing the convergence of designer,
artisan and hacker cultures. This "do it yourself" or "do it together"
movement emphasizes the use of electronics, 3D printing, robotics, and other
fabrication methods in the pursuit of creative and artistic endeavors. Arduino
has become a popular platform for the maker movement since its release in 2005.
Arduino boards can be bought for just a few dollars each, use very little power,
and can be made small enough for portable and wearable applications. The
downside is that they have very limited resources: typically, 32 KB of flash
memory for the program and 2 KB of RAM for both the stack and heap. These
limitations place significant constraints on how the boards are programmed.

This presentation will provide a brief overview of the Juniper language along
with typical Juniper design patterns. Juniper will be compared to the existing
Arduino language of choice - C++. Existing Juniper projects will be
demonstrated. In the spirit of the Maker Movement, there will be a "hands on"
portion of the presentation, in which audience members will receive (at no cost)
an Arduino compatible microcontroller and the components necessary to build a
small project. By the end of the presentation, audience members will be able to
construct the circuit and write the program for this project in Juniper.

Experience with the Arduino platform or circuit design is not necessary in
order to attend this presentation. However, audience members should have
familiarity with basic functional programming concepts such as
higher order functions, algebraic data types and polymorphic functions. Audience
members who wish to follow along during the "hands on" portion of
the presentation should install PlatformIO and the Juniper compiler beforehand
from [`http://platformio.org/`](http://platformio.org/) and [`http://www.juniper-lang.org/`](http://www.juniper-lang.org/). FARM will be the
first large scale workshop in which Juniper will be demonstrated.


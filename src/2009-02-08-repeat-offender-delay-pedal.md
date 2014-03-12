---
title: '"Repeat Offender" Delay Pedal'
layout: post
category: electronics
tags:
  - guitar
  - audio
---

## Germination

I started this project hoping to make a delay which would replace the two delays I was using on my pedalboard: one set for a long delay time with multiple repeats, the other set for a short delay time and a single repeat. So it would need to have two sets of controls. And modulation on the repeats would be nice, oh and an FX loop so I could modify the sound of the repeats.. oh and what about an EQ circuit to roll some treble off the repeats for a more analogue tone.

Before I’d even started I knew this was going to have to be a monster.

## The Building Blocks

About this time, a new delay project called the "Echo Base" was becoming a popular build on the diystompboxes forum. It had barely long-enough delay time (800ms, like roughly all PT2399 based delays), but it did have modulation on the repeats and the demos of existing builds sounded good so I ordered a PCB and set to work planning how I would jam in the other features I wanted.

![echobase schematic][2]

### Dual Controls

Fortunately there was already a popular DIY delay project called the "Rebote" which uses the same delay chip. Amongst the many published mods for this circuit, I found a handy diagram showing how to wire up dual delay controls, switchable via a 3PDT stompswitch.

![3]

### EQ on repeats

I wanted a one knob EQ circuit with an inherent mid-scoop, and the best sounding match I tried was the tone circuit from the Big Muff Pi distortion pedal. However, the output of the PT2399 IC was not at all suitable for driving the tone circuit directly, so I through together a single stage JFET boost to drive the tone circuit and protect the delay circuit from being loaded down by the impedance mismatch between the feedback line and the EQ.

### FX Loop

An FX loop is an easy addition: simply cut the feedback line and put in two switching jacks wired to complete the feedback line when nothing is plugged in. Simple in theory, but once I wired it up I quickly realized the delay circuit would need buffering; so in went a unity gain JFET buffer stage at the FX Send and another at the Return. By this point there were 3 PCBs, 8 potentiometers, 2 toggle switches, 4 1/4inch jacks, 3 stomp switches and 4 LEDs I had to squeeze into this pedal. That’s a metric crapload.

## Putting it together

As you can imagine, jamming everything mentioned above into a pedal enclosure and getting them working without interference and parasitic noise was not much fun. I’ll let the following picture speak for itself.

![4]

Even when it was done it didn’t look much better inside, but all the shielded wires between sub-circuits kept noise to an acceptable level. If I were to build this pedal again, I would definitely design a single PCB with all the components and board-mounted pots. Stupid amounts of labor went into assembling this pedal.

![5]

### Enclosure

I designed the enclosure artwork in Photoshop, then with the most excellent laser-powered assistance of Darron from Dazzatronix, cut back an enamel paint mask which would allow me to etch in the design with ferric choride. A bit of sanding to remove the etch mask, and bam:

![1]


## Conclusion

The pedal came out as well as I’d hoped, especially the aesthetic of the grungy typography acid-etched and backfilled with black paint. The sounds are good, but the bypass method of the Echo Base circuit isn’t quite perfect, as all non-true bypass effects pedals are destined to be. If it ever gets to me, I can easily enough make it true-bypass, but that will be at the expense of losing the feature whereby existing repeats continue to trail off after the pedal is bypassed.


 [1]: /img/delay/final.jpg
 [2]: /img/delay/echobase.png
 [3]: /img/delay/dualdelay.jpg
 [4]: /img/delay/debug.jpg
 [5]: /img/delay/guts.jpg



---
title: Programming Photoshop
layout: post
category: internets
tags:
  - design
---

Whether you&#8217;re building your first homepage or pushing pixels for a living, most of us can improve our Photoshop workflow. This article provides an introduction to customizing Photoshop to meet your needs, as well as providing some freebies and different techniques that may be of interest to designers and developers alike.

**Mac users: All shortcuts are in PC speak (`Ctrl==Command`), please translate for yourselves.*

### Code Monkeys & Pixel Pushers

Code monkeys (developers) love to think of themselves as the essence of efficiency, and compared to many designers, they are. We mere pixel pushers (designers), would be wise to learn from our code orientated brethren and take ten minutes to investigate how our own workflow could be streamlined, especially in the pre-code zone — Photoshop.

### Play it Again Sam

Photoshop has the ability to record a set of steps to be repeated later, these are called *actions*. Anyone looking for actions in [the usual places][1] may be excused for thinking that their intended purpose is to create tacky background and text effects. Actions are, in fact, a fantastic workflow optimization tool when used effectively. The criterion for an action is simple: Any regular procedure that requires more than one click or keystroke is suitable to be replaced by a pre-programmed action.

### Loading Action Sets

![The Actions Palette][2] To load an action set (`atn` file), select the right facing arrow in the top-right corner of the Actions palette. This will initiate a pop-out menu containing all the options for recording, loading and saving actions.

### What About the Freebies?

Alright, I’m sure you’re starting to get edgy by now, so I’ll bring on the good stuff. The first few action sets are for basic web design practices — things like progressive blurring, layer orientation and creating CSS-like borders. After that, we’ll move on to the good stuff – avoiding all need for the old school ‘slice and dice’ method of exporting a layout in favour of an action-packed alternative.

### Method Behind the Madness

The actions themselves will be explained individually, but this is a good time to introduce the method behind my function key madness. From each set, the action which I believe is the most frequently used is assigned the function key without any alternators (`Shift` or `Ctrl`). The second most frequent action is assigned the `Shift` alternator (`Shift + F#`), and in the event of a third action per key, the third action is assigned both the `Shift` and `Ctrl` alternators. Action sets that use different numeric values for their actions, such as border widths and gaussian blur radii are ordered from smallest to largest — the smallest gets the function key, the second gets the `Shift` alternator and the third gets both alternator keys.

![Function quick reference][3]
The above diagram is intended as a *cheat sheet* for anyone who would like an on screen reminder while they give these actions a test run.

#### Set 1 – Gaussian Blur

When designing this site, I created every drop shadow manually; a very long and arduous process if you’re not prepared. Our first action set is to cater for such times, as well for procedures like blurring colour channels when making things like the classic [orb][4] (layered .tif example), or Aqua button.

![the good old photoshop orb][5] This set contains 3 different actions, all assigned to the F8 function key:

F8 – Blur 4, 2, 1, 0.5
:   This action applies the gaussian blur filter to the current layer/channel four times: Once at 4px, once at 2px, once at 1px and one last time at 0.5px. Blurring elements in this way ensures that the resulting gradient is as smooth as possible.

F8 + Shift – Blur 6, 3, 1.5, 0.7
:   Same effect as above, only more pronounced as it starts with a higher blur radius.

F8 + Shift + Ctrl – Blur 10, 5, 2.5, 1
:   The most pronounced of the Gaussian blur set, this action is for drastically softening an object.

[Download gaussian-blur.atn][6]

#### Set 2 – Flip/Rotate

Altering the orientation of layers or the canvas has got to be pretty high up on most designers’ lists of frequent actions. So why not take those controls out of the menu system and put them at your fingertips? I’ve grouped these actions in relation to whether they affect the canvas or the current layer.

This set contains 8 different actions. Two per key for each key between F9 and F12:

F9
:   Rotate canvas 90° clockwise

F9 + Shift
:   Rotate canvas 90° counter-clockwise

F10
:   Flip canvas horizontal

F10 + Shift
:   Flip canvas vertical

F11
:   Rotate layer 90° clockwise

F11 + Shift
:   Rotate layer 90° counter-clockwise

F12
:   Flip layer horizontal

F12 + Shift
:   Flip layer vertical

[Download flip-rotate.atn][7]

#### Set 3 – A Few Essentials

The F7 key contains the most boring of today’s actions, image size and canvas size.
These are right up there for common commands, so I decided they deserved a spot on the team.

F7
:   Image Size

F7 + Shift
:   Canvas Size

[Download image-canvas-size.atn][8]

#### Set 4 – The Good Stuff

From the outset of this article I hinted towards an alternative to the tried and true *slice-dice-export* method of producing a graphics intensive web design. To be perfectly honest, that method drives me up the wall every time. There are always tiny alternations to be made down the line, resulting in either:

1.  Re-exporting the entire layout from Photoshop, disallowing the replacement of files you wish to keep
2.  Opening ImageReady. The less said about that the better.

Don’t get me wrong, I’m not saying that there have never been alternatives other than these — it’s more that these two options are the most obvious and therefore the most commonly used. Compounding the problematic nature of the old slice-n-dice is that modern CSS layouts have to account for variables such as resizing text. This means we often need to leave overlaps in our background images, allowing the layout to ‘grow’.

Well fear not, because this handy action set contains all you need to ditch the slice tool for good. It contains the following six actions, two per key for each function key between F4+F6:

F4 Flat copy *canvas*
:   Copies all layers of current canvas and creates a new layer containing the canvas copy. Simple, but useful.

F4 + Shift – New flat copy *canvas*
:   Same effect as above, except that the flat copy is made into a new image.

F5 – Flat copy *selection*
:   Copies all layers of current selection and creates a new layer containing the canvas copy. This one’s great for duplicating repeating elements of a design.

F5 + Shift – New flat copy *selection*
:   Here’s the slice replacement – just select the area of your canvas that you wish to slice, hit `Shift+F5`, hit enter at the prompt and your ready to choose your export format.

F6 – New indexed flat copy *canvas*
:   The same as the flat copy canvas action, except this one takes it one step further and converts the new image to indexed colour.

F6 – New indexed flat copy *selection*
:   Guess what this one does? Go on, I bet you can…

[Download prepare-4-web.atn][10]

### Choose Your own Adventure

The aim of this article was never to say *“This is how it should be done”*, nor did I intend to provide a definitive guide to actions. My intention was simply this:

> To encourage others to take a moment to contemplate how they go about the small, repetitive procedures in their daily work and how they can make things easier for themselves.

If you understand the reasoning behind setting something like this up, then surely you can also see the value in making a custom set to meet your own requirements and preferences. An extension on this approach is to have different action sets for different processes; eg. I have another set that are entirely for batch scanning — the most useful of which is a series of levels and curves tweaks that accounts for my faded old scanner. **Very** useful!

I hope you’ve enjoyed my first real article for Left Justified. You must have, or you wouldn’t have gotten this far!

 [1]: http://xchange.studio.adobe.com/ "Adobe Studio Exchange"
 [2]: /support-files/program-ps/load.gif
 [3]: /support-files/program-ps/f-keys.gif
 [4]: /support-files/program-ps/orb.tif "Layered example of an orb"
 [5]: /support-files/program-ps/orb.png
 [6]: /support-files/program-ps/blur.atn
 [7]: /support-files/program-ps/flip-rotate.atn
 [8]: /support-files/program-ps/image-canvas-size.atn
 [10]: /support-files/program-ps/prepare-4-web.atn

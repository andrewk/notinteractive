---
title: 'Responsible Design - Form Styling'
layout: post
category: internets
tags:
  - CSS
  - design
  - usability
---

There have been many great arcticles about styling forms with CSS recently, so theres no point in me discussing that any further. There is one aspect of form styling that sometimes gets lost in the rush &mdash; the &#8216;why&#8217;.

### Don’t do it for the Design

The following post may fall into the *bleedin’ obvious* category for many of you, but I think it needs to be reiterated. One mistake I often see is forms that are altered to meet the designer’s tastes rather than styled in an attempt to simplify the experience for the user. Tiny little search fields might look cool but they are a nightmare interact with.

### Do it for the People

Forms are something that I use daily, so when it came to making my own I gave some serious thought as to exactly what *I* would want when filling it out. I believe balancing the point where the design hat comes off and the usability/accessibility hat goes on is what makes a web designer; as such I consider ease of use and reliable functionality paramount when dealing with forms.

#### Real World Examples

An example of *finding the balance* came up today on the [webstandardsgroup][1] list. Someone was seeking help with a bug in Mozilla / Firefox whereby the dropdown arrow for a floated `<select>` was disappearing depending on the width set in the CSS. As the designer, it’s your responsibility to make sure the changes you have made to default widgets don’t cause such bugs to be triggered; if they do then the design is what must be sacrificed — not the usability.

Using the :focus pseudo-class to indicate the currently active field is a good practice, but watch out that you’re not doing more harm than good. In my opinion, if background colour changes are going to be made to the active field then the active colour should be lighter than that of the normal state. The user is reading the text in that field, so why make it harder for them? One [great looking site][2] I came across yesterday suffers from this common mistake (*Ed: not anymore…*). If you take a look at the comment form or the contact form in a modern browser you’ll see what I mean. Setting the background of the current field to a darker colour decreases the text contrast and also decreases a site’s *People Friendly Factor*.

 [1]: http://webstandardsgroup.org/
 [2]: http://www.graphikjunkie.com/ "Graphic Junkie by Jim Amos"

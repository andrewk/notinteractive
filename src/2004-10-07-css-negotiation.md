---
title: CSS Negotiation and a Sanity Saving Shortcut
layout: post
category: internets
tags:
  - CSS
  - design
---

A recent discussion with my friend [Jay](http://loststudiosnyc.com/) got me thinking about something  - most CSS/XHTML related articles and tutorials are very specialised; they only give you a detailed look at one part of the picture and then it&#8217;s up to you to put the pieces together. This isn&#8217;t always a good thing though, as it is left to the individual to experiment in search of combinations that not only work, but also allow relative freedom in future development.

I would prefer for this to be a massive investigation with all sorts of graphs and demonstrations, but there’s no way I can find the time for something like that. Instead, I offer a walk through of how I start every new CSS styled site and my preferences for CSS hacks negotiation.

### Fight the Power Default

A big part of dealing with cross-browser differences is accounting for the default property values of elements in each browser; namely `padding` and `margin`. I use the following declaration in every new site I design; it has saved me many hours of nitpicking.

{% highlight css %}
* {
  padding:0;
  margin:0;
}
{% endhighlight %}

It doesn’t seem like much at first, but wait till you look at your mildly styled form in 11 browsers to find the positioning identical in all of them; or your button-style lists are perfect the first time, every time.
**EDIT:** following the interest this technique has generated, I have posted a more detailed description of how this technique may be able to help you — [Global White Space Reset][1].

### Keep it all valid & legacy friendly?

Support for CSS across current common browsers is varying to say the least. It’s up to the needs of each site to draw the line in the sand in regards to support for legacy browsers. My general preference is to give Netscape 4 no CSS, allow some minor style differences for IE 5.0/PC and to damn IE 5/Mac to hell; sorry old school Mac users.

#### Inviting CSS to the party

{% highlight html %}
<link rel="stylesheet" href="/style/main.css" type="text/css" media="screen,projection" />
{% endhighlight %}

This method has a couple of advantages:

*   it does not suffer from the [FOUC][2] phenomenon, unlike `@import`.
*   Using a comma-separated list for the media attribute locks out NN 4.7. Step one of CSS negotiation complete.
*   Adding `projection` to the media attribute will cause Opera to use the stylesheet in full screen mode ([hat tip][3])
*   Our specification of a definite list of supported media will allow more flexibility if developing a handheld stylesheet in the future. (A future where all mobile UA‘s have at least Opera’s level of CSS support.)

#### Build for the Best, Test with the Rest

The title from a post on any web development forum – *“My CSS only works in IE! *”; – and it only ever will while you’re building in Internet Explorer. We’ve all heard it shouted from the rooftops (*blogtops?*) about how important it is to test in the most standards-compliant browser available when designing with said standards. Well DERRR! That’s like baking a cake and trying to taste it with you nose – it would be a similar sensation, but it’ll still be horribly wrong.

#### Beating Sense into Internet Explorer

There are only two methods I consider when delivering IE specific declarations in CSS:
[Star selector hack][4] for a one off fix

{% highlight css %}
* html foo {bar:none;}
{% endhighlight %}

Delivering an extra stylesheet to IE/PC via a [conditional comment][5]

{% highlight html %}
<!--[if IE]>
  <link rel="stylesheet" href="IE.css" media="screen" />
<![endif]-->
{% endhighlight %}

While both methods are valid, using conditional comments is the method I prefer as it allows all hacks to be kept totally separate. Some people are of the opinion that the mixing of code and comments is inherently wrong. They are correct, but this is war, damn it! Use IE’s own weapons against them, I say.
Step two of CSS negotiation complete – IE provided for without harming the innocent.

#### The Final Touches

You’ve built your page, it looks great in Mozilla/Opera/Safari and you’ve added a bit of correction for IE6 in your IE only file. Things probably don’t look quite right in IE 5 or 5.5/PC and depending on the differences; you may wish to add extra alterations for either or both.
My favourite method is using [Tantek’s][6] [IE5][7] and [IE 5.5][8] band-pass filters in the IE only stylesheet to import a separate file for that browser only.
Here’s a quick example of both filters:

{% highlight css %}
/* IE5 */
@media tty {
  i{content:"";/*" "*/}};
  @import 'ie5.css'; {;}/*";}
}/* */

/* IE 5.5 */
@media tty {
 i{content:"";/*" "*/}}@m;
 @import 'ie55.css'; /*";}
}/* */
{% endhighlight %}


Having so many style sheets may seem a little crazy to many, but doing it this way means only users of the browsers that need to be hacked have to suffer the extra bandwidth load – all the more reason for them to upgrade. Also, when the day comes that IE 5 gets put in the NN4.7 basket you can just edit/delete the extra files and go about your day.

 [1]: /2004/global-ws-reset.html
 [2]: http://www.bluerobot.com/web/css/fouc.asp "Flash of Unstyled Content"
 [3]: http://brothercake.com/
 [4]: http://www.info.com.ph/~etan/w3pantheon/style/starhtmlbug.html
 [5]: http://msdn.microsoft.com/workshop/author/dhtml/overview/ccomment_ovw.asp
 [6]: http://tantek.com/
 [7]: http://tantek.com/CSS/Examples/ie50winbandpass.html
 [8]: http://tantek.com/CSS/Examples/ie55winbandpass.html


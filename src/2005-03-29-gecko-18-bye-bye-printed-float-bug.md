---
title: 'Gecko 1.8: Bye-bye printed float bug!'
layout: post
category: internets
tags:
  - CSS
---
From [ Gecko 1.8 For Web Developers: Columns][1] (via: [Anne][2]):

> In particular some huge issues involving floats breaking across columns have been fixed. Since we use the same code for page layout as for columns, this also means a lot of problems with printing (and print previewing) pages with floats have been fixed

Hopefully this means that floated elements (read: columns) will be continued on the next page, as they should, instead of disappearing into some kind of magical void.

The article referenced above contains some very interesting CSS news regarding columns — go check it out! It looks like Firefox 1.1 is really going to up the stakes in the CSS 2.1 compliance field. Opera and Mozilla are certainly the driving forces at the moment, though I don’t doubt the Safari team are working hard to stay in the game.

 [1]: http://weblogs.mozillazine.org/roc/archives/2005/03/gecko_18_for_we.html
 [2]: http://annevankesteren.nl/ "Anne VanKesteren"

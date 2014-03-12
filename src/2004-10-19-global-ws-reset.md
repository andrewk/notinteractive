---
title: Global White Space Reset
layout: post
category: internets
tags:
  - CSS
  - design
---
The simple technique of resetting all margins and padding that I [mentioned](http://leftjustified.net/2004/css-negotiation.html) almost a fortnight ago has recently created far more discussion than any previous journal entry. After reading some differing opinions via the original post′s comments, email and the WSG mailing list I think it would be appropriate to take a closer look and cover these points in some detail.

### Recap

Here’s the CSS snippet in question.

{% highlight css %}
* {
  padding:0;
  margin:0;
}
{% endhighlight %}

The aim here is to save time when dealing with the minor cross browser differences caused by varying default values for these properties.

### Who Benefits the Most?

The people who would benefit the most from using this technique are those who are just starting to build entirely CSS styled sites and are in danger of developing the very common conditions of ‘class-itis’ and ‘div-itis’ instead of directly styling and positioning semantic elements. [Cameron][1] summed it up perfectly:

> The most oft-cited reason for not using semantic HTML is the perceived control that can be achieved by using tables/a lot of divs. By removing this “mystery” dimension from the size of elements, it could help people to become accustomed to styling semantic HTML.

### Correct Usage

This technique was added as an afterthought to the original post and as such was not accompanied by any details regarding exactly what is required of the developer if they use this approach. Firstly, it is important to remember that this rule cancels the padding and margin of every single element; something which has already been found to have the negative side affect of hiding the drop-down arrow of a `select` form widget in Firefox. That problem is very simple to fix, (re-apply padding to `select` `select  { min-width:1.5em; }) but it does bring up a good point — care should be taken when applying this rule to a page which contains forms as usability must remain paramount whenever [styling forms][3].

### Examples

That brings me to the second point regarding correct usage; following the declaration with your own global padding and margin rules. If we look at this [unstyled test page][4], and then the same page [with the rule applied][5], you can see just how drastic an effect this declaration has. 

Now that you’re comfortably in control of the padding and margins in every CSS able browser, it’s time to do something useful with that power. You could stick in something like this:

{% highlight css %}
* {
  padding:0;
  margin:0;
}

body {padding:5px;}
h1, h2, h3, h4, h5, h6, p, pre, blockquote, form, label, ul, ol, dl, fieldset, address { margin:20px 0; }
li, dd, blockquote { margin-left: 40px; }
fieldset { padding:10px; }
{% endhighlight %}

[View test page 3][6]

This will basically replicate the original layout of the page in Mozilla, only it will be cross-browser; no differences on lists or other troublesome elements in IE or anywhere else. That’s effective, but it’s far from exciting. What about if we replaced all the values with relative units (% or `em`)? 

{% highlight css %}
* {
  padding:0;
  margin:0;
}
h1, h2, h3, h4, h5, h6, p, pre, blockquote, label, ul, ol, dl, fieldset, address { margin:1em 5%; }
li, dd { margin-left:5%; }
fieldset { padding: .5em; }
{% endhighlight %}

[View test page 4][7]

Hey now, that’s a bit more like it! Now we have the basis for a site whereby all side margins are controlled by browser width and all vertical spacing is controlled by font size. Quick, simple and highly usable — this could easily be used as the basis for a solid but highly flexible fluid layout. All you need to do now is add the columns.

Have something to add? Comments are open as always…

*Thanks to [Russ][9] for saving me from having to type out the elements used for the test page.*

 [1]: http://themaninblue.com/
 [3]: /2004/responsible-forms.html "Responsible Design - Form Styling"
 [4]: /support-files/global-ws-r/test1.html
 [5]: /support-files/global-ws-r/test2.html
 [6]: /support-files/global-ws-r/test3.html
 [7]: /support-files/global-ws-r/test4.html
 [9]: http://maxdesign.com.au/

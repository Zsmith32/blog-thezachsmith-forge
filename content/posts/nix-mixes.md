---
title: "Nix Mixes"
date: 2021-06-16T20:57:54-05:00
draft: false
---

#### Short post

### Making the anvil ring to my ears
After making the first post, Hello Nix, I noticed on my mobile device there was some weird scaling and I needed to scroll on some devices. To fix this I made some changes to the Nix template I am using. Most of the changes are fixing broken classes from upgrading to Bootstrap 5. The other things I changed are making the blog posts on the main page optional to other users of the template and some font changes in the css on smaller screens. I did break one feature which expanded the paths in the navigation bar on larger screens. I may revisit this later, but for now I think the Hamburger icon is good enough.

### What I learned
I was very confused when I first started to tackle the mobile scaling issue. I saw "max-width: 100%" in the css and I also saw " content='width=device-width' " in the head html, so I thought the width would never exceed the device width. I was mistaken. I only realized this after digging through stack overflow and changing the viewport meta with no success. I think I also changed some of the max-width parameters in the css. So reading up on bootstrap I realized the bootstrap containers seemed to be clashing with another class.

But I think the most useful thing I learned was the media queries. I used them to change the social icon sizes and the navigation links at smaller screen sizes. 

You can check all the changes to the template at my fork [NixFork](https://github.com/Zsmith32/hugo-theme-nix). I also submitted these changes to the upstream repo in case they like any of the changes. I've been reading about open source development for a while now and it's helped me tremendously in my day to day work, but I'm glad I could finally get around to submitting a pull request to another's effort.



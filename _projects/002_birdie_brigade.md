---
layout: single
title:  "Dad's Christmas Gift - Birdie Brigade"
date:   2019-12-19 10:30:00 -0800
categories: 
hidden: true
---

The requirements of this project are to create something that can:
- Track which golf courses in San Diego have been birdied and which are yet to birdie
- Be placed on display in my parents' home

After tossing the problem around a while these are the steps I took to a finished product.

1. Identify the golf courses in question  
First step is to track down what we are talking about. There are a lot of ways to narrow this down (par 3 courses? military courses? all the courses in California?). We are shooting for including a reasonable number of courses -- something that could see appreciable progress in a year and is completeable without incredible financial investment. A reasonable number of courses seemed to be 20-50 and ideally within San Diego county. Staying true to utilizing publicly available resources I tracked down this article from the San Diego tourism website: [San Diego Golf Courses](https://www.sandiego.org/articles/golf/san-diego-golf-courses.aspx). After copying the list into a spreadsheet and filtering by TYPE = Public we were left with 29 courses, just about perfect! To round it out I added a local favorite that is categorized as a Par3 on the list: [Oaks North](https://www.jcgolf.com/san-diego-golf-courses/oaks-north/).

<!-- To be included! -->

2. Identify locations
In order to identify where these courses are (at this point I have a rough idea of an end result that looks like a map of San Diego with the various courses somehow highlighted) I plugged the list of courses into [BatchGeo](https://batchgeo.com/), a free web application for making a map of a list of things. Here is that map: [San Diego Public 18 Hole Golf Courses](https://batchgeo.com/map/89e42eee67528b41c96076587d586b51). From there I could easily pull out an image with all the courses located in the picture. Unfortunately this image did not display the county lines. I was able to pull in the same map with a county line overlay from: [Randy Majors](https://www.randymajors.com/p/countygmap.html). 

<!-- To be included! -->

3. Draw boundaries separating each course into its own entity
This step resulted in a feeling of sympathy towards all the gerrymanderers out there. The goal was to split the map into pieces such that each course had its own piece. It was not easy to do this in a way that would appease the populus, I imagine. This step was accomplished entirely in [GIMP](gimp.org). In the end the map looked something like this:

<!-- To be included! -->

4. Label courses
At this point I had something like [this](https://www.etsy.com/listing/88556396/manhattan-new-york-city-typography-map) in mind for filling out the segments of the map. 
![Manhattan Typographic Example](/assets/manhattan_typography.jpg)  
I tried to find an application that could automatically generate a map like this but came up empty. Instead, I found an [article](https://blog.spoongraphics.co.uk/tutorials/how-to-create-typography-illustrations-the-easy-way) detailing how one might create something similar in Adobe Illustrator. I decided to exercise my novice GIMP skills and attempt to recreate a similar process. 
<!-- I am here -->


We've made this map:

![Birdie Brigade Map](/assets/birdie_brigade_map.jpeg)



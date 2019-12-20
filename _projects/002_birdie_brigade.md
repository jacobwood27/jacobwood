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
I tried to find an application that could automatically generate a map like this but came up empty. Instead, I found an [article](https://blog.spoongraphics.co.uk/tutorials/how-to-create-typography-illustrations-the-easy-way) detailing how one might create something similar in Adobe Illustrator. I decided to exercise my novice GIMP skills and attempt to recreate something similar. I supplemented the default font set with a few [freely available fonts](https://fonts.simplythebest.net/). I then made judicious use of the [Unified Transform Tool](https://docs.gimp.org/2.10/en/gimp-tool-unified-transform.html) to squeeze the text into various 4 skew-sided polygons. Ideally I was looking for a combination between the Unified Transform and the [Cage Transform](https://docs.gimp.org/2.10/en/gimp-tool-cage.html), I wanted a way to specify a many sided polygon around my text and then linearly map the points of that polygon to a new shape. The Cage Transform almost does this, but is less strict in its application. The two courses that offered some trouble in the map below were Oceanside and Bonita. Oceanside required dealing with letters indivually and Bonita utilized the cage transform to attempt to bend the text a bit with medium success.

![Birdie Brigade Map](/assets/birdie_brigade_map.jpeg)

5. Procure the puzzle board and pieces
The final product in mind now is a printed image of the course names with the border "skeleton" laser cut and glued on top to generate a 3D feel. After a course is birdied the puzzle piece of that specific course will be dated and placed into the board. Initially I rendered the skeleton as an STL to 3D print but could not track down a 3D printer with a reasonable bed size (more than 8 inches or so). Laser cutting seemed to be the perfect solution as the end product would, by default, generate a skeleton and a set of puzzle pieces that fit perfectly within the skeleton. A popular online source for laser cutting with quick turnaround is [Ponoko](https://www.ponoko.com/). They offer a standard size at 15"x15", which seemed about right. They require a vector image with some color coding to differentiate between through-cutting, engraving, and area cutting. [Inkscape](https://inkscape.org/)'s [trace bitmap](https://inkscape.org/doc/tutorials/tracing/tutorial-tracing.html) made it easy enough to generate the .svg file Ponoko was looking for. I resized the map to make it as large as possible and still fit within the standard material and had it cut out of a recycled acrylic.

<!-- .svg of skeleton here -->

6. Print the course names
The backdrop to the board was to be printed at [Costco Photo Center](https://www.costcophotocenter.com/) which always turns out impressive prints pretty quickly. The image in GIMP was resized to match the skeleton Ponoko was currently cutting. The text, because it had been converted to an image in order to facilitate manipulation, showed some artifacts in the resizing process. The artifacts were likely tolerable, and old Jacob would have called it there and printed away, but, in the spirit of completeness, I decided to address the issue. The image was exported as a binary bitmap (white and black) and moved over to Inkscape for vectorization. The same "trace bitmap" function was used with the brightness thresholding option. The resulting path was simplified just slightly and the result, after remembering to delete the original bitmap, was impressive. The vectorized image was exported as a huge png with a dpi matching that of the Costco printers.

7. Creating the puzzle image
The puzzle image was generated by taking a popular image of each course and setting it into the template generated in previous steps. The resulting 

8. Assembly
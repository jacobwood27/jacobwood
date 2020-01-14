---
layout: splash
classes: wide
title:  "Dad's Christmas Gift - Birdie Brigade"
date:   2019-12-19 10:30:00 -0800
categories: 
hidden: true
author_profile: true
---

The requirements of this project are to create something that can:
- Generate a goal list of courses to be pursued
- Track which golf courses have been birdied and which are yet to birdie
- Be placed on display in my parents' home

After tossing the problem around a while these are the steps I took to a finished product.

1. Identify the golf courses in question  
    First step is to track down what we are talking about. There are a lot of ways to narrow this down (par 3 courses? military courses? all the courses in California?). We are shooting for including a reasonable number of courses -- something that could see appreciable progress in a year and is complete-able without incredible financial investment. A reasonable number of courses seemed to be 20-50 and ideally within San Diego county. I was able to track down this article from the San Diego tourism website: [San Diego Golf Courses](https://www.sandiego.org/articles/golf/san-diego-golf-courses.aspx). After copying the list into a spreadsheet and filtering by TYPE = Public we were left with 29 courses, just about perfect! To round it out I added a local favorite that is categorized as a Par3 on the list: [Oaks North](https://www.jcgolf.com/san-diego-golf-courses/oaks-north/).

    | Course Name                                   | Address                                          | Date Birdied | Birdier |
    |-----------------------------------------------|--------------------------------------------------|--------------|---------|
    | Coronado Municipal Golf Course                | 2000 Visalia Row, Coronado, CA 92118             |              |         |
    | Balboa Park Golf Course                       | 2600 Golf Course Dr, San Diego, CA 92102         |              |         |
    | Carlton Oaks Golf Course                      |  9200 Inwood Dr, Santee, CA 92071                |              |         |
    | Steele Canyon Golf Club                       | 3199 Stonefield Dr, Jamul, CA 91935              |              |         |
    | Sycuan Casino and Golf Resort                 | 3007 Dehesa Rd, El Cajon, CA 92019               |              |         |
    | Barona Creek Golf Club                        | 1932 Wildcat Canyon Rd, Lakeside, CA 92040       |              |         |
    | Borrego Springs Resort Golf Club & Spa        | 1112 Tilting T Dr, Borrego Springs, CA 92004     |              |         |
    | Cottonwood - Rancho San Diego                 | 3121 Willow Glen Dr, El Cajon, CA 92019          |              |         |
    | Mission Trails Golf Course                    | 7380 Golfcrest Pl, San Diego, CA 92119           |              |         |
    | Rams Hill Golf Club                           | 1881 Rams Hill Rd, Borrego Springs, CA 92004     |              |         |
    | Warner Springs Ranch                          | 31652 Hwy 79, Warner Springs, California 92086   |              |         |
    | Torrey Pines Golf Course                      | 11480 N Torrey Pines Rd, La Jolla, CA 92037      |              |         |
    | The Crossings at Carlsbad                     | 5800 The Crossings Dr, Carlsbad, CA 92008        |              |         |
    | The Grand Golf Club at Fairmont Grand Del Mar | 5200 Grand Del Mar Way, San Diego, CA 92130      |              |         |
    | Aviara Golf Club & Resort                     | 7447 Batiquitos Drive, Carlsbad. CA 92011        |              |         |
    | Oceanside Golf Course                         | 825 Douglas Dr, Oceanside, CA 92058              |              |         |
    | Maderas Golf Club                             | 17750 Old Coach Rd, Poway, CA 92064              |              |         |
    | Rancho Bernardo Inn Golf Resort               | 17550 Bernardo Oaks Dr, San Diego, CA 92128      |              |         |
    | Boulder Oaks Golf Club                        | 10333 Meadow Glen Way E, Escondido, CA 92026     |              |         |
    | Carmel Mountain Ranch Golf Course             | 14050 Carmel Ridge Rd, San Diego, CA 92128       |              |         |
    | Castle Creek Country Club                     | 8797 Circle R Dr, Escondido, CA 92026            |              |         |
    | Eagle Crest Golf Course                       | 2492 Old Ranch Rd, Escondido, CA 92027           |              |         |
    | Mt. Woodson Golf Course                       | 16422 N Woodson Dr, Ramona, CA 92065             |              |         |
    | Pala Mesa Golf Resort                         | 2001 Old Hwy 395, Fallbrook, CA 92028            |              |         |
    | San Vicente Golf                              | 24157 San Vicente Rd, Ramona, CA 92065           |              |         |
    | The Vineyard Golf Course                      | 925 San Pasqual Rd, Escondido, CA 92025          | 01/10/20     | Sean    |
    | Twin Oaks Golf Course                         | 1425 N Twin Oaks Valley Rd, San Marcos, CA 92069 |              |         |
    | Bonita Golf Club                              | 5540 Sweetwater Rd, Bonita, CA 91902             |              |         |
    | Chula Vista Municipal Golf Course             | 4475 Bonita Rd, Bonita, CA 91902                 |              |         |
    | Oaks North                                    | 12602 Oaks N Dr, San Diego, CA 92128             |              |         |

2. Identify locations
    In order to identify where these courses are (at this point I have a rough idea of an end result that looks like a map of San Diego with the various courses somehow highlighted) I plugged the list of courses into [BatchGeo](https://batchgeo.com/), a free web application for making a map of a list of things. Here is that map: [San Diego Public 18 Hole Golf Courses](https://batchgeo.com/map/89e42eee67528b41c96076587d586b51). From there I could easily pull out an image with all the courses located in the picture. Unfortunately this image did not display the county lines. I was able to pull in the same map with a county line overlay from: [Randy Majors](https://www.randymajors.com/p/countygmap.html). 

3. Draw boundaries separating each course into its own entity
    This step resulted in a feeling of sympathy towards all the gerrymanderers out there. The goal was to split the map into pieces such that each course had its own piece. It was not easy to do this in a way that would appease the populace, I imagine. This step was accomplished entirely in [GIMP](gimp.org). In the end the map looked something like this:

    ![Gerrymandered Map](/assets/images/gerrymandered.png)

4. Label courses
    At this point I had something like [this](https://www.etsy.com/listing/88556396/manhattan-new-york-city-typography-map) in mind for filling out the segments of the map. 
    ![Manhattan Typographic Example](/assets/images/manhattan_typography.jpg)  
    I tried to find an application that could automatically generate a map like this but came up empty. Instead, I found an [article](https://blog.spoongraphics.co.uk/tutorials/how-to-create-typography-illustrations-the-easy-way) detailing how one might create something similar in Adobe Illustrator. I decided to exercise my novice GIMP skills and attempt to recreate something similar. I supplemented the default font set with a few [freely available fonts](https://fonts.simplythebest.net/). I then made judicious use of the [Unified Transform Tool](https://docs.gimp.org/2.10/en/gimp-tool-unified-transform.html) to squeeze the text into various 4 skew-sided polygons. Ideally I was looking for a combination between the Unified Transform and the [Cage Transform](https://docs.gimp.org/2.10/en/gimp-tool-cage.html), I wanted a way to specify a many sided polygon around my text and then linearly map the points of that polygon to a new shape. The Cage Transform almost does this, but is less strict in its application. The two courses that offered some trouble in the map below were Oceanside and Bonita. Oceanside required dealing with letters individually and Bonita utilized the cage transform to attempt to bend the text a bit with medium success.

    ![Birdie Brigade Map](/assets/images/birdie_brigade_map.jpeg)

5. Procure the puzzle board and pieces
    The final product in mind now is a printed image of the course names with the border "skeleton" laser cut and glued on top to generate a 3D feel. After a course is birdied the puzzle piece of that specific course will be dated and placed into the board. Initially I rendered the skeleton as an STL to 3D print but could not track down a 3D printer with a reasonable bed size (more than 8 inches or so). Laser cutting seemed to be the perfect solution as the end product would, by default, generate a skeleton and a set of puzzle pieces that fit perfectly within the skeleton. A popular online source for laser cutting with quick turnaround is [Ponoko](https://www.ponoko.com/). They offer a standard size at 15"x15", which seemed about right. They require a vector image with some color coding to differentiate between through-cutting, engraving, and area cutting. [Inkscape](https://inkscape.org/)'s [trace bitmap](https://inkscape.org/doc/tutorials/tracing/tutorial-tracing.html) made it easy enough to generate the .svg file Ponoko was looking for. I resized the map to make it as large as possible and still fit within the standard material and had it cut out of a recycled acrylic.

    ![Course Skeleton](/assets/images/to_cut2.svg)

6. Print the course names
    The backdrop to the board was to be printed at [Costco Photo Center](https://www.costcophotocenter.com/) which always turns out impressive prints pretty quickly. The image in GIMP was resized to match the skeleton Ponoko was currently cutting. The text, because it had been converted to an image in order to facilitate manipulation, showed some artifacts in the resizing process. The artifacts were likely tolerable, and old Jacob would have called it there and printed away, but, in the spirit of completeness, I decided to address the issue. The image was exported as a binary bitmap (white and black) and moved over to Inkscape for vectorization. The same "trace bitmap" function was used with the brightness thresholding option. The resulting path was simplified just slightly and the result, after remembering to delete the original bitmap, was impressive. The vectorized image was exported as a huge png with a dpi matching that of the Costco printers.

7. Putting it all together
    Once all the pieces were in house I was able to assemble everything into the final gift. The laser-cut acrylic from Ponoko turned out fantastic. After slowly separating the "skeleton" from the "puzzle pieces" I glued the skeleton onto the printed image of all the course names. The pieces were places in a bag to be added to the frame one at a time. The whole thing was put into a simple black frame from Ross and wrapped up. We'll have to keep you appraised of the progress towards filling out the map (and the table above)!
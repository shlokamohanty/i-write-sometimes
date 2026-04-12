---
layout: post
title: "Spectrometry, My qualms with my research experiences, Light, and Colors by Halsey"
subtitle: "this might be a funny read. scrambled thoughts."
date: 2025-10-20
tags: reflections
form: prose
---
So very few people know this, but, I was a little bit of a Tumblr kid. Not even an avid user, just a here and there type of a user but yes, I did have Tumblr. Coming back to my point, many Tumblr kids, also really got into Halsey, during the Badlands era, of course. And, because 9th grade was so emotionally traumatizing, I became the biggest fan, of ‘Colors’ by Halsey, it was my ringtone for the next year and a half, I think.


Now for my Physical Computation Midterm, my idea is to make a board for kids called ‘Trash!’ which helps kids learn how to segregate trash. Teju, one of my really close friends from college, told me that I’m basically training kids to be kabadiwalas, which cracked me up. I have to get him on the substack bandwagon.


Anyways, I’ve been working with Adafruit AS7341, which, is an 11-channel multi-spectral sensor for color detection and spectral analysis applications.


It’s such an interesting sensor, because it gives you the received light intensity in 8 wavelength bins. It can be used for color spectrometry. So on the floor, only three other people I know have worked with this sensor, Tom Igoe, he’s my professor, who told me to work with this sensor, and see the challenges that come with it. Devan worked with the sensor for sensor and proximity sensing, but she told me that Octavio has made color sensing projects before, so I guess now I’m going to annoy him.


Anyways, yesterday, I spent the whole day yesterday mapping red, green and blue, using paper in different lighting. The readings came up with ranges such that green and blue was within red’s range. That’s when I started thinking of the song, ‘Colors’, because the lyrics,

```
“Everything is blue
His pills, his hands, his jeans
And now I’m covered in the colors
Pulled apart at the seams
And it’s blue”
```


```
“You were red, and you liked me because I was blue
But you touched me, and suddenly I was a lilac sky
Then you decided purple just wasn’t for you”
```


![image (6)](https://github.com/user-attachments/assets/8533813c-f0dc-4f32-80b7-a3a2f4ce9fa7)


Then I spoke with William, showed him my numbers, and the code, and he was baffled, couldn’t help me out, then James, was baffled too, but he said to use LEDs to map the colors. Then I told Arjun, and rightfully so, he was like I should run my experiments with people before I do them so I spend less time. I spent way too long trying to do it myself, until the very end when I’m like this isn’t working, but it’s okay at least I learnt a lesson, talk to more people while working and also I learnt a lot about the sensor, light and colors.


I’ve given myself the deadline of wednesday to figure this sensor out, else, I’m using Hall Effect Sensors, which are much easier to work with. Still, this sensor got me thinking a lot, especially about my experiences with spectrometry and research.


So my first year in UW-Madison, I worked in a research group with a biophysicist named Pupa Gilbert, who also authored, ‘Physics in Arts’, I haven’t read the book so I don’t know how it is precisely. The research I worked with was actually analysing synchrotron spectromicroscopy data. This particle accelerator uses charged particles to produce synchrotron radiation, in simpler words, the synchrotron radiation also includes X-rays. Now this means, because I worked in this field of research, I should understand spectrometry. I know it in bits and pieces but still not clearly. Because, while doing research, at an undergraduate level, you are only beginning to learn concepts, and you’re not fully thorough with it. The kind of work that you do in undergrad research is more grunt work within research, and the lab mentors, don’t necessarily explain what exactly the research is either. There is this lack of communication, and I think the professors, the lab mentors, and the undergrads, who are working are not clear with what they are doing. Because, spectromicroscopy data was in the form of images, I had a straightforward task within the research which and that was just combining individual components and their relative concentrations in Adobe Photoshop ® in separate channels and displaying them all at once.


Now thinking about this is sad, because there is an apparent dissonance. I barely understood the work that was being done. I think coming into ITP, the same was repeating for me, especially in terms of Physical Computation. I was doing the work without thoroughly understanding, because of which, I blew up my Arduino. That moment, changed things for me at least with physical computation because, I accepted that my concepts are not clear and that physics and electronics are so different. So while others are making really cool projects, I’m going to step back and try and understand first. Which is why the deadline of wednesday to get really in depth with the sensor, and understand more clearly how it works, because once I figure out how the sensor clearly works, it would make everything else simpler. So at least that is a much more straightforward approach to learning instead of just doing things and jumping the gun.


Now coming to my next physics research experience, which I thought would be super interesting, and I even applied to Hilldale Research Fellowship for this but I didn’t get it, but it’s okay plans changed by then :P. This one I was so excited about because, its much closer to my interests. It was the CMS experiment research at CERN. Well it wasn’t directly at CERN, the CMS collaboration essentially extends into different countries, and multiple institutions and universities. UW-Madison, was part of this, so I thought what would be an excited opportunity, because since a kid I’ve always been intrigued by the work at CERN, was somewhat disappointing, because there wasn’t any work for me to do. I did this research for two years, but all the work that I had was work with a collider simulation data and generate plots, which would help the graduate student to then put in a CNN (convolutional neural network) for image classification. So every week, we would have a meeting but still barely any work, which was honestly sad because I was excited to work on this.


So then unlike other times, I took the initiative this time, and I said you know I want to apply for the Hilldale Fellowship and I still hadn’t given up on this, and because by this point I had done a machine learning course, I was like I could do CNN perhaps. Not going to lie, I don’t think I would have been able to do this without any mentorship. In terms of data science, I would have been fine but my concepts in physics weren’t as clear. I’m also a little bit of a dimwitted/silly person, HAHA, but it’s okay I’m hardworking so I could have made it work. But, my research was going to be on muons and how they produce collinear off-momentum electrons that interact with the beamline components. These particles are the primary source of background for a muon collider detector, known as beam-induced background (BIB). BIB is essentially noise, so it is necessary to mitigate BIB to obtain precise and reliable results from the detector. The data would have been initially analyzed for unique patterns, which are then used to train a convolutional neural network (CNN) to automate separating the two types of data. The project would have taken me about twelve months to complete, with stages dedicated to data collection from simulation, pre-processing, CNN training and evaluation. The goal is to develop a machine learning algorithm that can help identify rare processes and significantly increase precision in particle physics research. Frankly, the professor who was mentoring me for CMS research wasn’t the best mentor, because if he would have been more involved in the fellowship process, maybe I would have gotten it. By the time, he even sent the edits to my proposal, was a little later than the deadline, and the edit was just changes in two lines. They still accepted the proposal but anyways I didn’t get the fellowship. But, it’s okay, I decided that summer, this wasn’t truly my calling, and it was more at the intersection of STEM and arts, maybe more closely to filmmaking.


The last time, I had office hours with Christina Tang, she was explaining to me more about residency and what arts research entails, and how it’s more about growing within your own practice. I think that was really interesting to me, how STEM and arts research are so different, where in STEM there are multiple hierarchies, dissonance, but arts research is more focused on improving your own practice. I still don’t exactly quite understand it but this is something that I definitely want to look at.


Also my CERN dreams, aren’t exactly still out of bounds, maybe eventually sometime in my life, I pursue the Arts in CERN residency, and look at my understanding then, and look at physics in a more artistic perspective, at least that’s what I’m trying to build through my substack currently. Eventually, I’m able to translate all of my learning into my art which would be really interesting. Also currently writing has been helping me a lot in terms of thinking more critically. I am coming to realise I have really poor communication skills verbally, and oftentimes I struggle to articulate my thoughts while talking but that’s another substack post.


Anyways, now coming back to Adafruit AS7341. I’m able to get the spectrometry readings currently. However, I’m still lacking the understanding about color perception and physics. Still, I think I’m going to read more about this and get a better understanding about color perception, and use it in maybe a Hypercinema project too, through making an animation using chromatography perhaps, but also depends on the scope of the topic.


Just some thoughts about my learning methods and figuring out my interests tracing it to the work I’ve done.

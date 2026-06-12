---
layout: post
title: "mini memory n-grams"
subtitle: "can i use computational text to show how memory is encoded, consolidated, retrieved, implanted, and sometimes forgotten."
date: 2026-03-24
tags: work-ongoing
---

1. corpus -> prior to learning
2. my code with markov chains and n-grams -> learning
3. give contextual clue using semantics and tagging -> consolidation
4. retrieval and forgetting -> shown from the generated text

For the corpus, I'll look at images and write them, in a very direct manner. Something like this text message that I got:

```
You know when I got your text with the pictures I had my AirPods on and Siri reads out my texts. If someone sends a picture she describes it . And she described it like “two children in front of a computer screen and other objects“ 
```

I'm just going to use mine and Amisha's photos because we have the most photos together.

corpus:
```
Amisha and Shloka are sitting on top of a log on the Appalachian Trail during the fall.  
Amisha and Shloka are at Jatin's sister’s engagement, whilst Shloka acts like a cat.  
Amisha and Shloka are walking in Manitou, posing with their hands clawed.  
Amisha laughs while Shloka gives a thumbs-up as they wait for their pitcher of sangria.  
Amisha and Shloka are at a bar in Baltimore posing under a pair of a mannequin's legs.  
Amisha and Shloka with Jatin in Madison, with fur trapper hats that look like badgers.  
Amisha and Shloka are in a bathroom at Boston University.  
Amisha and Shloka with Arnav in Mumbai, with bowling balls.  
Amisha and Shloka are in a bathroom in Mumbai with a sign indicating that a mirror selfie leads to inherent self-reflection.  
Amisha and Shloka are sitting on bleachers at a stadium in Georgia Tech with beer spilled right below them.  
Amisha and Shloka are in Atlanta, while Shloka has their thumbs up and the other hand has a glove with a shape like a large pointed hand.  
Amisha and Shloka, while Amisha is blinking and Shloka is holding their breath to stop their hiccups.  
Amisha and Shloka are hugging eachother in a Subway Station.  
Amisha and Shloka are in Madison, while Amisha has their thumbs down and Shloka is holding a mop.  
Amisha and Shloka, while Amisha is holding a plushy shaped like a strawberry, right after they woke up in the morning.  
Amisha and Shloka are in front of an Urgent Care in Madison, while Shloka is smiling and has their head placed on Amisha's shoulders, and Amisha is frowning.  
Amisha and Shloka are in New York, while Shloka is pouting and Amisha has their head placed on Shloka's shoulders with their mouth wide open and their eyes tightly scrunched.
Amisha and Shloka are posing in front of a waterfall in Minnesota.
Amisha and Shloka are in an Uber in Mumbai, they have their heads touching, and sunlight is falling on Amisha’s face.
Amisha and Shloka are lying next to eachother while Shloka has a scruntched face and Amisha is looking directly into the camera.
Amisha and Shloka in a bus heading from Chicago to Madison, and they are sharing earpods to listen to music.
Amisha and Shloka are in Boston, and Amisha is hugging Shloka, and they have a fake heart tattoo on their wrist, and Shloka is wearing white eyeliner that is winged.
Amisha and Shloka are in a car while Shloka put their hair up, and Amisha is side-eyeing.
Amisha and Shloka are acting like monkeys.
Amisha and Shloka are posing with the body cut out of a cricketer.
Amisha and Shloka, while Shloka is squeezing them.
Amisha and Shloka are in school, standing under a tree while sunlight falls on both of them, and Shloka is reaching for Amisha’s hands.
Amisha and Shloka are in a Rickshaw after celebrating Holi; they are covered in color, mostly pink.
Amisha and Shloka, while Amisha appears to be peeping from behind Shloka.
Amisha and Shloka, while they are dressed in Halloween costumes, Shloka appears to be a pirate, and Amisha seems to be a cat, and Amisha is hugging Shloka while their hands are clawed.
Amisha and Shloka, while Shloka is on their knees, and Amisha is pretending to slap Shloka.
Amisha and Shloka are sitting in front of the steps of the Asiatic Society in Mumbai, while Shloka is hugging Amisha.
Amisha and Shloka are at Amisha’s house right after waking up, while Amisha waits to cut their cake.
Amisha and Shloka are looking at each other; they have glitter makeup on.
Amisha and Shloka are somewhere with their legs dipped in a river stream.
Amisha and Shloka, lying on the grass in Boston, are using their bags as pillows.
Amisha and Shloka are in school, while Amisha is swinging her tongue out, and Shloka is beside them.
Amisha and Shloka are in a shop at a mall with Shloka having their eyebrows raised and their mouth shut, and Amisha is smiling wide.
```

Proud of this one. It was conceptually solid. Definitely going to work on this further because so much potential to explore here.

https://github.com/shlokamohanty/Reading-and-Writing-Electronic-Text/blob/main/mini_memory_n-grams.ipynb



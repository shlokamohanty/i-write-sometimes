---
layout: post
title: "mini memory n-grams"
subtitle: "can i use computational text to show how memory encoded, consolidated, retrieved, implanted, and sometimes forgotten."
date: 2026-03-24
tags: academic
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
Amisha and Shloka are hugging in a Subway Station.  
Amisha and Shloka are in Madison, while Amisha has their thumbs down and Shloka is holding a mop.  
Amisha and Shloka, while Amisha is holding a plushy shaped like a strawberry, right after they woke up in the morning.  
Amisha and Shloka are in front of an Urgent Care in Madison, while Shloka is smiling and has their head placed on Amisha's shoulders, and Amisha is frowning.  
Amisha and Shloka are in New York, while Shloka is pouting and Amisha has their head placed on Shloka's shoulders with their mouth wide open and their eyes tightly scrunched.
```
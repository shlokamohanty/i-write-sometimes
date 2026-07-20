---
layout: post
title: creative coding with python
subtitle: ""
date: 2026-05-31
tags:
  - interests
---

I've barely dabbled in creative coding, which is something, I want to try out more over the summer, but, I don't want to write in javascript. I want to try creative coding in python. Perhaps, incorporate some of my RWET projects into this, data visualisations, and experiment with my writings.

- Learning py5 using https://github.com/hollygrimm/py5-noc-book-2

noting this down so its easy to copy the path in terminal.

```
/Users/shloka/Documents/noc/py5-noc-book-2
```

## introduction

```
# my silly interpretation of string theory (it's not really correct)
# ecosystem project

import py5

def setup():
    py5.size(640, 240, py5.JAVA2D)
    py5.background(0)

def draw():
    py5.no_fill()
    py5.stroke(255)
    py5.stroke_weight(0.5)

    max_length = 5  
    curve_intensity = 20
    side = int(py5.random(50))
    
    cx, cy = py5.width / 2, py5.height / 2
    
    # the intention was to try vector scaling: v_new = vec_A +s*(vec_V_random - vec_A) but, what i did instead is v_new = vec_V_random + vec_V1_random. the two controls and ending anchors are not algebraically related to each other.
    
    scale_left = 1.5
    scale_right = 1.5

    if side <= 5:
        cx = py5.random(0, py5.width / 2)
        cy = py5.random(0, py5.height)
    else:
        cx = py5.random(py5.width / 2, py5.width)
        cy = py5.random(0, py5.height)

    py5.bezier(
        cx, cy, 
        cx + py5.random(-max_length, max_length) * 0.33 + py5.random(-curve_intensity, curve_intensity), cy + py5.random(-max_length, max_length) * 0.15 + py5.random(-curve_intensity, curve_intensity),  
        cx + py5.random(-max_length, max_length) * 0.66 + py5.random(-curve_intensity, curve_intensity), cy + py5.random(-max_length, max_length) * 0.95 + py5.random(-curve_intensity, curve_intensity), 
        cx + py5.random(-max_length, max_length),               
        cy + py5.random(-max_length, max_length)
    )

py5.run_sketch()
```

![](/i-write-sometimes/assets/images/noc_intro.png)

Even though this wasn't really challenging, it was still really fun. And, mathematically, I didn't use vector scaling. Instead did random jitter. Honestly, this just looks pretty, because even the string theory interpretation is technically wrong here, but that's fine. Well, the strings do function like open vibrating strings. I do like the imbalance and unpredictability: early universe representation.

The thing with Python is that I can actually use datasets and pandas, hehe, yay. This is so exciting. I understand why people like creative coding.

## randomness

```
# Create a random walker that has a greater tendency to move down and to the right. (A partial solution follows in the next section.)

class Walker:
    def __init__(self):
        self.x = py5.width / 2
        self.y = py5.height / 2
    
    def show(self):
        py5.stroke(0)
        py5.point(self.x, self.y)
    
    def step(self):
        choice = int(py5.random(4))
        if choice == 0:
            self.x += 2
        elif choice == 1:
            self.x -= 1
        elif choice == 2:
            self.y += 2 
        else:
            self.y -= 1

walker = None

def setup():
    py5.size(640, 240, py5.JAVA2D)
    global walker
    walker = Walker()
    py5.background(255)

def draw():
    walker.step()
    walker.show()

py5.run_sketch()
```


I initially did this:
```
self.y -= 2 # but this made the random walker move up instead of down. 
```

It turns out I had forgotten how digital images work. It's very different from the cartesian plane. I understand now.

A digital image -> a grid of pixels stored in memory
the memory gets filled in **row by row, top row first**

- "row 0" = the very first row of pixels drawn = the top of the screen
- "row 1" = the next row down

so y = 0 is the top, and y increases downward

(0,0) ─────────────► x increases →
  │
  │
  │
  ▼
y increases

In fact, NumPy image arrays work this way too.

More on mathematical intervals

```
# `[a, b)` — includes `a`, excludes `b`
if r < 0.4: # [0, 0.4)
            self.x += 1
        elif r < 0.6: # [0.4, 0.6)
            self.x -= 1
        elif r < 0.8: # [0.6, 0.8)
            self.y += 1
        else: [0.8, 1)
```

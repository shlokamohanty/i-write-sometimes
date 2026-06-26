---
layout: post
title: creative coding with python
subtitle: ""
date: 2026-05-31
tags:
  - academic
  - work-ongoing
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
    scale = 0.5
    # vector scaling: v_new = vec_A +s*(vec_V_random - vec_A)
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

## randomness
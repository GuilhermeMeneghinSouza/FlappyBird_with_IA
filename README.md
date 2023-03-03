# Flapy Bird with IA
---

Lets train a IA to play flappy bird, but with GML 😐

This project is a flappy bird simulation to train a IA. Is done in Game Maker Studio 2, with GML.
I don't know if the sprites are copyrighted or not and they are binary, so I didn't commit them. I'll decide what to do with then lather, maybe just a link, or a drive.

IA works great at v2.0, but with a few caveats:
- Tubes are deleted after crossing birds position.
- IAs have control much control them us about there movement, they can fly in a contant position and instantly stop flying.
    - This is easy to fix, but will be done later.

This projects also is an exercise for me, so there is somethings more features than just the IA, as:
- score
- medals
- mode for humans 

But, **this is not the end point of this project**. So ignore bugs or bad implementation.

---

# IA

## Solution:
Here is one of the best solutions that my code found:
``` ini file
[IA]
score="220948.000000"
n1_weight0="-64.000000"
n2_weight0="-43.000000"
n3_weight0="84.000000"
n1_weight1="69.000000"
n2_weight1="17.000000"
n3_weight1="82.000000"
n1_weight2="0.000000"
n2_weight2="80.000000"
n1_weight3="-8.000000"
n2_weight3="-76.000000"
n1_weight4="0.000000"
n2_weight4="-60.000000"
```
Just copy this to your `savedata.ini` file, and test. On windows must be located at `$HOME/AppData/Local/Flappy_Bird`. On Ubuntu, I have no idea, and I didn't test if this run on ArchLinux, because the Game Maker say its compile just for Ubuntu so... 🤷
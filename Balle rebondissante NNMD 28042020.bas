#include "fbgfx.bi"
screenres 700,700
screen 12
dim as single circlex, circley, xm, ym, rayon, speed1, speed2
circlex=100
circley=300
ym=0
rayon=35
speed1=7
speed2=8
Do
    cls 
    line (10,450)-(660,450),12
    line (10,450)-(70,405),12
    line (70,405)-(660,405),12
    line (660,405)-(660,450),12
    circle (circlex,circley),rayon,12,,,,f
    if ym=0 then circley=circley-speed1
    if ym=1 then circley=circley+speed2
    locate 2,2
    print "dirigez les rebonds de la balle a l'aide des touches directionnelles"
    circle (circlex,circley),35,12,,,,f
    sleep 10
    if circley<=40+rayon then ym=1
    if circley>=350+rayon then ym=0
    if circlex>=415+rayon then xm=1
    if multikey (fb.sc_right) then circlex=circlex+1.5
    if multikey (fb.sc_left) then circlex=circlex-1.5
Loop
sleep 
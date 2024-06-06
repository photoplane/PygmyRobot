#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Mesure de la distance d'un obstacle avec un télémètre
laser VL53L1X branché à un Raspberry Pi.

Nécessite le module python Qwiic VL53L1X conçu par Sparkfun:
https://github.com/sparkfun/Qwiic_VL53L1X_Py

Pour plus d'infos:
https://electroniqueamateur.blogspot.com/2020/10/mesure-dune-distance-avec-telemetre.html

"""

import qwiic_vl53l1x as qwiic
import time

print("Inialisation du telemetre VL53L1X...")

ToF = qwiic.QwiicVL53L1X()
if (ToF.sensor_init() == None): 
    print("reussie!\n")
ToF.set_distance_mode(1) # 1: faible portée,  2: grande portée

while True:
    try:
        ToF.start_ranging()
        time.sleep(.1)
        distance = ToF.get_distance()
        time.sleep(.1)
        ToF.stop_ranging()

        print("Distance: %s mm" % (distance))

    except Exception as e:
        print(e)
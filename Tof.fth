( many thanks https://electroniqueamateur.blogspot.com )
( sudo pip3 install sparkfun-qwiic-vl53l1x )
CODE TOF
    import qwiic_vl53l1x as qwiic
    ToF = qwiic.QwiicVL53L1X()
    ToF.set_distance_mode(1) # 1: faible portée,  2: grande portée
    ToF.start_ranging()
    distance = ToF.get_distance()
    ToF.stop_ranging()
    dpush(distance)
END-CODE



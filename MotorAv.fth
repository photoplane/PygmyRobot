CODE MOTORAV    
    import RPi.GPIO as GPIO
    from time import sleep
    GPIO.setmode(GPIO.BOARD)

    GPIO.setup(3, GPIO.OUT)
    GPIO.setup(5, GPIO.OUT)
    GPIO.setup(7, GPIO.OUT)
    GPIO.setup(8, GPIO.OUT)
    GPIO.setup(10, GPIO.OUT)
    GPIO.setup(12, GPIO.OUT)

    p=GPIO.PWM(7,100)
    p1=GPIO.PWM(12,100)
    p.start(0)
    p1.start(0)

    GPIO.output(3, True)
    GPIO.output(5, False)
    p.ChangeDutyCycle(25)
    GPIO.output(7, True)
    GPIO.output(8, True)
    GPIO.output(10, False)
    p1.ChangeDutyCycle(25)
    GPIO.output(12, True)
    sleep(5)

    

    GPIO.output(7, False)
    GPIO.output(12, False)
    p.stop()
    p1.stop()

    GPIO.cleanup()
END-CODE    


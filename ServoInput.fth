( Choose a desired duty cycle )
( many thanks https://electroniqueamateur.blogspot.com )
CODE SERVOINPUT
    import RPi.GPIO as GPIO
    servo_pin = 16 
    GPIO.setmode(GPIO.BOARD)  
    GPIO.setup(servo_pin, GPIO.OUT) 
    pwm = GPIO.PWM(servo_pin, 50)  
    rapport = 7       
    pwm.start(rapport)  
    while True:
        print ("Rapport cyclique actuel: " , rapport)
        rapport = input ("Rapport cyclique desire:  ")
        pwm.ChangeDutyCycle(float(rapport))
END-CODE    

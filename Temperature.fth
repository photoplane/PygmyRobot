( Source : https://www.raspberry-buy.de/Tutorial_Digitaler_I2C_Temperatursensor_LM75A_Raspberry_Pi.html )S
CODE TEMPERATURE
    import smbus
    import time

    I2C_TMP_LM75_ADRESS = 0x48

    LM75_TMP_BYTE = 0x00

    i2c = smbus.SMBus(1)# Funktionen definieren
    def getTemp():
        temp = " "              
        raw=i2c.read_i2c_block_data(I2C_TMP_LM75_ADRESS,LM75_TMP_BYTE)   
        tempMsb = raw[0]
        tempLsb = raw[1]
        temp = (((tempMsb << 8) | tempLsb) >>7) * 0.5
        if temp > 125:
            temp = temp - 256
        return(temp)

    while True:
        temp = getTemp()
        print("LM75A-Temperatur: "+ str(getTemp()) +" °C")
        time.sleep(5)
END-CODE

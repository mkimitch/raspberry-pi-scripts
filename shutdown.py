#!/usr/bin/env python

import RPi.GPIO as GPIO
import subprocess #test

pin = 21
GPIO.setmode(GPIO.BOARD)
GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.wait_for_edge(pin, GPIO.FALLING)

subprocess.call(['shutdown', '-h', 'now'], shell=False)
GPIO.cleanup()
#! /usr/bin/python3

import sys
import requests
import json
from env import *
from datetime import datetime

t = datetime.now()

data = {
	'timestamp': '{}-{}-{} {}:{}:{}'.format(t.year, t.month, t.day, t.hour, t.minute, t.second),
	'co2': sys.argv[1],
	'humidity': sys.argv[2],
	'temperature': sys.argv[3],
	'sensorid': SensorId
} 

try:
	r = requests.post("https://" + url + path, data=data, verify=False)
except requests.exceptions.RequestException as e:
	print(e)
	f = open(cache, "a+")
	f.write(json.dumps(data)+"\n")
	f.close()


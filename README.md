# IndoorClimatePi

## Setup

Set parameters
```
In ./config
&  ./code/env.py
```

Clone repo to Raspberry Pi and open folder
```bash
git clone https://github.com/Indoor-Climate/IndoorClimatePi.git && cd IndoorClimatePi/
```
Change config
```bash
nano config
```
Setup the Raspberry Pi
```bash
sudo make
```
\*If the system needs to be taken down use:\*
```bash
sudo make clean
```
```
https://discordapp.com/api/webhooks/764178702887813193/Z7fVk5Arvtn0nDfoY8ktKephmRMFaL2pjL6kk76jU_KoNgG_7-FEd-OHdafOYrcWg1BH
```
## Navigation guide
```
.
├── code
│   ├── bsec_bme680.c:              The C code from alexh modifiede according to
|   |                               the repport.
|   |               
│   ├── env.py:                     Variables to be used in the sendInfo.py code
|   |
│   ├── sendInfo.py:                The python code that handles the https requests
|   |
│   └── src:                        Contains the BSEC library
|        ├──
|
├── config:                         Variables to use in cronfile.sh
|
├── cronfile.sh:                    Contains a cronjob which tells Discord
|                                   that the Raspberry Pi is alive - used
|                                   in Makefile
|
├── IndoorClimatePid.service:       A daemon to start the sensor when
|                                   the Raspberry Pi is turned on
|
├── Makefile:                       A script to setup the Raspberry Pi
|                                   and a script to clean it
|
└── README.md:                      This File
```

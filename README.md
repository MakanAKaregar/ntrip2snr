# ntrip2snr
Using BKG Ntrip Client and gnssrefl's rinex2snr module to acccess to real-time streaming SNR data 

This example converts 1 min RTCM streams to RInex 3 and then SNR-ready file to be used for real-time processing 
Open the ntrip2snr.bnc file in a text editor and set the following configuration input parameters:

casterUrlList=Visited Broadcasters [character string, comma separated list], example:  http://user:pass@rtgpsout.unavco.org:2101
mountPoints=Mountpoints [character string, semicolon separated list, example: //user:pass@rtgpsout.unavco.org:2101/AC67_RTCM3 RTCM_3.1 USA 57.79 -152.43 no 2
rnxPath=Directory [character string], example: $REFL_CODE/rinex/AC67/2023
rnxScript=File upload script, full path [character string], example: ./run_rinex2snr.sh
rnxIntr=File interval [character string: 1 min|2 min|5 min|10 min|15 min|30 min|1 hour|1 day], example: 1 min
rnxV3=Produce version 3 file content [integer number: 0=no,2=yes], example: 2
rnxSampl=File sampling rate [integer number of seconds: 0,5|10|15|20|25|30|35|40|45|50|55|60], example: 1 sec 
rnxSkel=RINEX skeleton file extension [character string], example: SKL

Default configuration is set for an orbitray site (AC67) from UNAVCO's caster server (rtgpsout.unavco.org:2101)
To run the ntrip2snr: ./bnc-2.12.18-suse42-64bit-static -nw -conf ntrip2snr.bnc



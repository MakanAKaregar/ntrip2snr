# ntrip2snr
Using BKG Ntrip Client and gnssrefl's rinex2snr module to access to real-time streaming SNR data 

This example converts 1 min RTCM streams to RINEX 3 files and then to SNR-ready files to be used for real-time processing.

Open the <code>ntrip2snr.bnc</code> file in a text editor and set the following configuration input parameters:

<code>casterUrlList=</code>Visited Broadcasters [character string, comma separated list], example:  <code>http://user:pass@rtgpsout.unavco.org:2101</code>

<code>mountPoints=</code>Mountpoints [character string, semicolon separated list, example: <code>//user:pass@rtgpsout.unavco.org:2101/AC67_RTCM3 RTCM_3.1 USA 57.79 -152.43 no 2</code>

<code>rnxPath=</code>Directory [character string], example: <code>$REFL_CODE/rinex/AC67/2023</code> where $REFL_CODE is an environmental variable to be used by gnssrefl's rinex2snr module. The <code>rnxPath</code> should be equal to the full-path as: <code>rnxPath=/home/makan/Desktop/GNSS_IR/rinex/AC67/2023</code>

<code>rnxScript=</code>File upload script, full path [character string], example: <code>./run_rinex2snr.sh</code>

<code>rnxIntr=</code>File interval [character string: 1 min|2 min|5 min|10 min|15 min|30 min|1 hour|1 day], example: <code>1 min</code>

<code>rnxV3=</code>Produce version 3 file content [integer number: 0=no,2=yes], example: <code>2</code>

<code>rnxSampl=</code>File sampling rate [integer number of seconds: 0,5|10|15|20|25|30|35|40|45|50|55|60], example: <code>1 sec</code> 

<code>rnxSkel=</code>RINEX skeleton file extension [character string], example: <code>SKL</code>

Default configuration is set for an orbitray site (AC67) from UNAVCO's caster server (rtgpsout.unavco.org:2101)

Before running <code>ntrip2snr.bnc</code>, BNS requires RINEX header as a separate file with SKL extension stored in <code>$REFL_CODE/rinex/AC67/2023</code>. For running the example configuration file, make sure you copy <code>AC67_RTCM.SKL</code> to the mentioned directory. The RINEX header file is often missed in caster servers, thus this file needs to be created in advance. 

To run the <code>ntrip2snr: ./bnc-2.12.18-suse42-64bit-static -nw -conf ntrip2snr.bnc</code>



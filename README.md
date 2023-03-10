# ntrip2snr
Using BKG Ntrip Client (BNC) and gnssrefl's rinex2snr module to access to real-time SNR data.

The BNC compiled code is available at: https://igs.bkg.bund.de/ntrip/bnc

I tested Code Executable "v2.12.18 static" for OpenSUSE, Ubuntu, Debian and Raspbian. The compiled file <code>bnc-2.12.18-suse42-64bit-static</code> is also available in ntrip2snr repository. 

This example converts 1 min RTCM streams to RINEX 3 files and then to SNR-ready files to be used for real-time processing.

Open <code>ntrip2snr.bnc</code> in a text editor and set the following configuration input parameters:

<code>casterUrlList=</code>Visited Broadcasters [character string, comma separated list], example:  <code>http://user:pass@rtgpsout.unavco.org:2101</code>

<code>mountPoints=</code>Mountpoints [character string, semicolon separated list, example: <code>//user:pass@rtgpsout.unavco.org:2101/AC67_RTCM3 RTCM_3.1 USA 57.79 -152.43 no 2</code>

<code>rnxScript=</code>File upload script, full path [character string], example: <code>./run_rinex2snr.sh</code>

<code>rnxIntr=</code>File interval [character string: 1 min|2 min|5 min|10 min|15 min|30 min|1 hour|1 day], example: <code>1 min</code>

<code>rnxV3=</code>Produce version 3 file content [integer number: 0=no,2=yes], example: <code>2</code>

<code>rnxSampl=</code>File sampling rate [integer number of seconds: 0,5|10|15|20|25|30|35|40|45|50|55|60], example: <code>1 sec</code> 

<code>rnxSkel=</code>RINEX skeleton file extension [character string], example: <code>SKL</code>

Default configuration is set for an orbitray site (AC67) from UNAVCO's caster server (rtgpsout.unavco.org:2101)

Set a directory to store RINEX 3 files via <code> -key rnxPath $REFL_CODE/rinex/AC67/2023</code> where $REFL_CODE is an environmental variable to be used by gnssrefl's rinex2snr module. 

Before running <code>ntrip2snr.bnc</code>, BNC requires the RINEX header as a separate file with SKL extension stored in <code>$REFL_CODE/rinex/AC67/2023</code> (rnxPath). For running the example configuration file, make sure you copy <code>AC67_RTCM.SKL</code> to the mentioned directory. The RINEX header file is often missed in caster servers, thus this <code>.SKL</code> file needs to be created in advance. 

To run <code>ntrip2snr: ./bnc-2.12.18-suse42-64bit-static -nw -conf ntrip2snr.bnc -key rnxPath $REFL_CODE/rinex/AC67/2023</code>



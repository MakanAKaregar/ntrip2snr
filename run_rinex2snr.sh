#!/bin/bash
source ~/env/bin/activate
python3.9 run_rinex2snr.py -Rinex3FileName $1

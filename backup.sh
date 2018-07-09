#!/bin/bash

tar cvfz - . | ./streamazure.py -b "${HOSTNAME}_$(date '+%Y%m%d_%H%M%S').tar.gz" 

#!/usr/bin/env bash
# Reference:
# runcommand of Retorpie:  https://github.com/retropie/retropie-setup/wiki/runcommand
# edit and path: $ sudo nano /opt/retropie/configs/all/runcommand-onend.sh

sed '1,$d' /dev/shm/runcommand.log > /dev/shm/runcommand.log
echo "notice" >&2
echo "PLZ GO TO SLEEP!" >&2
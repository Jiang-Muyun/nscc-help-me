#!/bin/sh
qstat -E | grep pbs | awk '{print $1}' | xargs -I {} qdel {}
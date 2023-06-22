#!/bin/sh
R=$(qstat -E | grep R | wc -l)
Q=$(qstat -E | grep Q | wc -l)
A=$(qstat -E | grep pbs | wc -l)
echo " --- Running $R Queueing $Q Total $A ---"
qstat -Q|grep -E 'g1|g2|g3|g4|ai'
qstat -E | grep pbs
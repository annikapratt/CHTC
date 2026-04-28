#!/bin/bash

NAME=desired_name.dnd
OUTPUT_DIR=/path/to/output

mashtree_bootstrap.pl --reps 100 --numcpus 2 $OUTPUT_DIR/split_fastas/*.fasta > $NAME

mv $NAME $OUTPUT_DIR


#!/bin/bash
# spades.sh

# Define variables
SPECIES="$1"
OUTPUT_PATH="$2"

FWD_TRIMMED=${SPECIES}_forward_paired_output.fastq
REV_TRIMMED=${SPECIES}_reverse_paired_output.fastq

mkdir scratch
mkdir output/

# add option isolate
spades.py --pe1-1 $FWD_TRIMMED \
          --pe1-2 $REV_TRIMMED \
          -k 127 \
          --cov-cutoff auto \
          --tmp-dir scratch \
          -t 16 -m 144 --isolate -o output/

echo "Files in output directory: "
ls -lap output/

mv output/contigs.fasta ${OUTPUT_PATH}/"${SPECIES}_contigs.fasta"

#!/bin/bash
# quast.sh

SPECIES="$1"
INPUT_FASTA=/path/to/${SPECIES}_contigs.fasta
OUTPUT_PATH=/desired/output/path

mkdir output/

# run this if you need to figure out where in the container the quast.py script is (getting a command not found error)
#find / -name "quast.py"

/quast-5.3.0/quast.py $INPUT_FASTA -o output/

mv output/report.pdf ./${SPECIES}_report.pdf
cp ${SPECIES}_report.pdf $OUTPUT_PATH

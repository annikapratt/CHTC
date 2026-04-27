# !/bin/bash

# This is a file to run Earl Grey for genome annotations
# Executable file for Earlgrey
# Define your genome assembly, output directory, and species

set -e

SPECIES="$1"
ASSEMBLY_DIR=/path/to/assembly
OUTPUT_PATH=/path/to/output

printf "Assembly: "
echo $ASSEMBLY_DIR
printf "Species: "
echo $SPECIES
printf "Output path: "
echo $OUTPUT_PATH

# Make an output directory
mkdir output/

# -g is the FASTA file, -s is the species name, -t is the number of threads, -o is the output file
earlGrey -g $ASSEMBLY_DIR/${SPECIES}.fna -s $SPECIES -t 16 -o output/

tar -czf ${SPECIES}_earlGrey_output.tar.gz output/

mv ${SPECIES}_earlGrey_output.tar.gz $OUTPUT_PATH

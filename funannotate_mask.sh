#!/bin/bash

# assign variables
SPECIES="$1"
ASSEMBLY_DIR=/path/to/genomes
REPEAT_LIBRARY=/path/to/earlGrey/output/"${SPECIES}-families.fa"

# check that those variables are properly assigned
printf "Here is the species: "
echo $SPECIES

# run funnanotate sort 
funannotate sort -i $ASSEMBLY_DIR/"${SPECIES}.fna" \
--minlen 1000 -o "${SPECIES}_sort.fa"

# run funannotate mask
funannotate mask -i "${SPECIES}_sort.fa" \
-m repeatmodeler \
-l $REPEAT_LIBRARY \
-o "${SPECIES}_masked.fa" --cpus 6

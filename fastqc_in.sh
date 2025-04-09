#!/bin/bash

module load fastqc/0.11.9
module load multiqc

cd /data/FASTQ/

for file in $(ls *.fastq.gz)
do
  echo "My file name is $file"
  echo "Running fastqc....."
  fastqc $file
done

multiqc *


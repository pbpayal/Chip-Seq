#!/bin/bash

module load samtools

cd /data/merged_fastq/

for file in $(ls *sam)
do
echo "The filename is $file"
samtools view -S -b $file > $file.bam
done


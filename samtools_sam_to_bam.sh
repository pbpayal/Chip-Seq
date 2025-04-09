#!/bin/bash

module load samtools

cd /data/NHGRImito/Chipseq_tatyana_2021/merged_fastq/

for file in $(ls *sam)
do
echo "The filename is $file"
samtools view -S -b $file > $file.bam
done


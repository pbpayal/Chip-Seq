#!/bin/bash

#cd /data/sam_files/Acetyl/
cd /data/sam_files/Lactyl/sorted_filtered_bams
module load samtools

for file in $(ls sorted*)
do
samtools index $file
done
exit

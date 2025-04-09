#!/bin/bash

#cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Acetyl/
cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Lactyl/sorted_filtered_bams
module load samtools

for file in $(ls sorted*)
do
samtools index $file
done
exit

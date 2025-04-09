#!/bin/bash

#sinteractive --mem=64g --cpus-per-task=16 --time=1-0:0:0 --gres=lscratch:5

module load macs

#cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Acetyl/sorted_filtered_bams
cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Lactyl/sorted_filtered_bams
for file in $(ls *filtered.bam)
do
  	echo "The filename is $file"
        macs2 callpeak -t $file -f BAMPE -B -q 0.05 --broad -g mm -n macs2_sorted_broad_$file --outdir macs2_sorted_broad_out_$file
done
exit

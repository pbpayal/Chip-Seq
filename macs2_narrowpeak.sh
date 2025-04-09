#!/bin/bash

#sinteractive --mem=64g --cpus-per-task=16 --time=1-0:0:0 --gres=lscratch:5

module load macs

#cd /data/NHGRImito/Chipseq_tatyana_2021/sam_files/Lactyl
#cd /data/NHGRImito/Chipseq_tatyana_2021/sam_files/Acetyl

#for file in $(ls *filtered.bam)
#do
#	echo "The filename is $file"
#	macs2 callpeak -t $file -f BAMPE -B -q 0.05  -g mm -n macs2_narrow_$file --outdir macs2_narrow_out_$file
#done
#exit

#cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Acetyl/
cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Lactyl/
for file in $(ls sorted*)
do
  	echo "The filename is $file"
        macs2 callpeak -t $file -f BAMPE -B -q 0.05  -g mm -n macs2_sorted_narrow_$file --outdir macs2_sorted_narrow_out_$file
done
exit

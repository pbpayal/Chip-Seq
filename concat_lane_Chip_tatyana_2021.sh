#!/bin/bash

#cd /data/NHGRImito/Chipseq_tatyana_2021/TT10_C 
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT11_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT12_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT13_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT15_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT19_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT20_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT21_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT22_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT23_C
cd /data/NHGRImito/Chipseq_tatyana_2021/TT24_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT25_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT26_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT7_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT8_C
#cd /data/NHGRImito/Chipseq_tatyana_2021/TT9_C

for f in $(ls *L001_R1_001.fastq.gz)
do
r1=$f;
r2=${f/L001_R1_001.fastq.gz/}L002_R1_001.fastq.gz;
echo "The R1 file is $r1, R2 file is  $r2";
cat $r1 $r2 > final_merged_$r1
echo "The final filename is $final_merged_$r1"
done

for f in $(ls *L001_R2_001.fastq.gz)
do 
r1=$f;
r2=${f/L001_R2_001.fastq.gz/}L002_R2_001.fastq.gz;
echo "The R1 file is $r1, R2 file is  $r2";
cat $r1 $r2 > final_merged_$r1
echo "The final filename is $final_merged_$r1"
done        

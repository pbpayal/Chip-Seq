#!/bin/bash

#cd /data/TT10_C 
#cd /data/TT11_C
#cd /data/TT12_C
#cd /data/TT13_C
#cd /data/TT15_C
#cd /data/TT19_C
#cd /data/TT20_C
#cd /data/TT21_C
#cd /data/TT22_C
#cd /data/TT23_C
#cd /data/TT24_C
#cd /data/TT25_C
#cd /data/TT26_C
#cd /data/TT7_C
#cd /data/TT8_C
#cd /data/TT9_C

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

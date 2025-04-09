#!/bin/bash

module load bwa/0.7.17

cd /data/NHGRImito/Chipseq_tatyana_2021/merged_fastq/ 

#index="/data/NHGRImito/Mouse_GRCm38_BWA_genome/"

for file in $(ls *L001_R1_001.fastq.gz)
do
r1=$file;
r2=${file/L001_R1_001.fastq.gz/}L001_R2_001.fastq.gz;
echo "The R1 file is $r1 and the R2 file is $r2"
bwa mem  -t 8 /data/NHGRImito/Mouse_GRCm38_BWA_genome/Mus_musculus.GRCm38.dna.primary_no_scaffold.fa.gz $r1 $r2 > bwa_out_$r1.sam
done




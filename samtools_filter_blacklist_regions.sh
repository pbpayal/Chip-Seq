#!/bin/bash

cd /data/NHGRImito/Chipseq_tatyana_2021/sam_files

module load samtools/1.13

for file in $(ls *uniq.bam)
do
  echo "My file name is $file"
  echo "Running ----SAMTOOLS FILTER BAM FILES----"
  echo "Running $file"
  samtools view -b -L /data/NHGRImito/atacseq/ENCFF547MET.bed -U $file_filtered.bam  -o /data/NHGRImito/Chipseq_tatyana_2021/sam_files/extra_output/out_$file $file
  echo "The  output is filtered_$file"

done

echo "end"

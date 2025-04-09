#!/bin/bash

module load bedtools
#cd /data/sam_files/Lactyl/
#cd /data/sam_files/Acetyl

# Lactyl
#macs2_narrow_S10_filtered.bam_peaks.narrowPeak macs2_narrow_S1_filtered.bam_peaks.narrowPeak
#macs2_narrow_S12_filtered.bam_peaks.narrowPeak macs2_narrow_S4_filtered.bam_peaks.narrowPeak
#macs2_narrow_S14_filtered.bam_peaks.narrowPeak macs2_narrow_S5_filtered.bam_peaks.narrowPeak
#macs2_narrow_S15_filtered.bam_peaks.narrowPeak

#bedtools intersect -a macs2_narrow_S15_filtered.bam_peaks.narrowPeak \
# -b macs2_narrow_S4_filtered.bam_peaks.narrowPeak macs2_narrow_S1_filtered.bam_peaks.narrowPeak\
# macs2_narrow_S5_filtered.bam_peaks.narrowPeak \
# macs2_narrow_S10_filtered.bam_peaks.narrowPeak macs2_narrow_S12_filtered.bam_peaks.narrowPeak \
# macs2_narrow_S14_filtered.bam_peaks.narrowPeak -wa -wb -C -filenames> S15_intersect_out.txt

#Acetyl
#macs2_narrow_S11_filtered.bam_peaks.narrowPeak macs2_narrow_S2_filtered.bam_peaks.narrowPeak  macs2_narrow_S7_filtered.bam_peaks.narrowPeak
#macs2_narrow_S13_filtered.bam_peaks.narrowPeak macs2_narrow_S3_filtered.bam_peaks.narrowPeak  macs2_narrow_S8_filtered.bam_peaks.narrowPeak
#macs2_narrow_S16_filtered.bam_peaks.narrowPeak macs2_narrow_S6_filtered.bam_peaks.narrowPeak  macs2_narrow_S9_filtered.bam_peaks.narrowPeak

#bedtools intersect -a macs2_narrow_S9_filtered.bam_peaks.narrowPeak \
# -b macs2_narrow_S11_filtered.bam_peaks.narrowPeak macs2_narrow_S13_filtered.bam_peaks.narrowPeak macs2_narrow_S16_filtered.bam_peaks.narrowPeak \
# macs2_narrow_S2_filtered.bam_peaks.narrowPeak \
# macs2_narrow_S3_filtered.bam_peaks.narrowPeak macs2_narrow_S6_filtered.bam_peaks.narrowPeak \
# macs2_narrow_S7_filtered.bam_peaks.narrowPeak macs2_narrow_S8_filtered.bam_peaks.narrowPeak \
# -wa -wb -C -filenames > S9_intersect_out.txt

cd /data/sam_files/Acetyl/MACS2_output/
bedtools intersect -a acetyl_PDH_M.narrowPeak -b acetyl_WT.narrowPeak -wa -wb -C -filenames -header > acetyl_intersect_out.txt 
#bedtools intersect -a acetyl_PDH_M.narrowPeak -b acetyl_WT.narrowPeak -wo -header > acetyl_intersect1_out.txt

#cd /data/sam_files/Lactyl
#bedtools intersect -a lactyl_PDH_M.narrowPeak -b lactyl_WT.narrowPeak -wa -wb -C -filenames > lactyl_intersect_out.txt

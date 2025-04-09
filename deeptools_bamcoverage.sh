module load deeptools
#cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Acetyl/ 
cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Lactyl/sorted_filtered_bams/
for file in $(ls *bam)
do 
	bamCoverage -b $file \
	-o $file.bw \
	--binSize 20 \
	--normalizeUsing BPM \
	--smoothLength 60 \
	--extendReads 150 \
	--centerReads \
	-p 6 2> $file_bamCoverage.log
done
exit


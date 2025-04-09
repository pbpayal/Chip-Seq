module load deeptools
#cd /data/sam_files/Acetyl/ 
cd /data/Lactyl/sorted_filtered_bams/
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


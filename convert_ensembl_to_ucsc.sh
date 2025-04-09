cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Acetyl/sorted_filtered_bams

module load ucsc

for file in $(ls *bdg)
do
	awk '{print "chr"$1 "\t" $2 "\t" $3 "\t" $4}' $file > $file_ucsc.bdg
done
exit

for file in $(ls *ucsc.bdg)
do
	sed -i 's/chrMT/chrM/g' $file
done
exit

module load ucsc
for file in $(ls *ucsc.bdg)
do
echo "The filename is $file"
bedGraphToBigWig $file /data/NHGRImito/Payal_scripts/mm10.chrom.sizes $file.bw
done

exit

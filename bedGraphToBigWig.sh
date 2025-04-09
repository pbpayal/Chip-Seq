module load ucsc
cd /data/NHGRImito/2021_Chip_Tatyana/sam_files/Acetyl/sorted_filtered_bams

module load ucsc
for file in $(ls *ucsc.bdg)
do
echo "The filename is $file"
bedGraphToBigWig $file /data/NHGRImito/Payal_scripts/mm10.chrom.sizes $file.bw
done
exit


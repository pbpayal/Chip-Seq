module load ucsc
cd /data/sam_files/Acetyl/sorted_filtered_bams

module load ucsc
for file in $(ls *ucsc.bdg)
do
echo "The filename is $file"
bedGraphToBigWig $file /data/mm10.chrom.sizes $file.bw
done
exit


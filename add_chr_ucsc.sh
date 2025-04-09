cd /data/sam_files/Acetyl/sorted_filtered_bams

for file in $(ls *bdg)
do
awk '{print "chr"$1 "\t" $2 "\t" $3 "\t" $4}' $file > $file_ucsc.bdg
done
exit


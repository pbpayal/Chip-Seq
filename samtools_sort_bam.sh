#cd /data/sam_files/Acetyl/ 
cd /data/sam_files/Lactyl
module load samtools/1.13

for file in $(ls *filtered.bam)
do
  echo "My file name is $file"
  echo "Running ----SAMTOOLS SORT AND CONVERSION TO BAM----"
  samtools sort  -o sorted$file -O bam $file
  echo "The  output is sorted$file"
  
done

echo "end"

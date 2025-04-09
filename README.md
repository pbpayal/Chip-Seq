First quality control checks were performed using FastQC (0.11.9)[1] on raw sequence data in fastq files generated from sequencer. The Phred scores for all samples were above 30,  so we continued with next steps. The fastq files were aligned to the mouse reference genome (GRCm38 or mm10) [2] using BWA-mem(0.7.17)[3]. An important issue with ChIP-seq data concerns the inclusion of multiple mapped reads where same reads are mapped to multiple loci on the reference genome. Multiple mapped reads increase the number of usable reads and the sensitivity of peak detection; however, the number of false positives may also increase. So the output BAM files were filtered to retain only uniquely mapping reads using Samtools(1.15.1 )[4] view. Blacklisted regions are largely comprised of things like major satellite repeats. These regions will show aberrantly high signal in all samples, thereby skewing normalization and often adding meaningless peaks. Thus, the reads overlapping with backlisted regions were removed from bam files using Samtools view. The file containing the blacklisted regions were downloaded from the ENCODE [5] project.  Next, broad peak calling was performed to identify areas in the genome, enriched with aligned reads next to position of protein (histone) bound to DNA using MACS2(2.2.6) [6]. Further, Diffbind(3.2)[7] was used to identify the differentially enriched peaks between wildtype and PDH-mutant samples. The peak profiles were annotated using ChIPseeker(1.28.3) [8] in R (version 4.1.0). For visualization of peaks in UCSC Genome Browser, the bam files were first sorted and indexed using Samtools sort and Samtools index respectively and the bedGraph files were converted to bigWig[9] files using UCSC(435) bedGraphToBigWig[10] tool.

References

[1] Andrews, S. (2010). FastQC:  A Quality Control Tool for High Throughput Sequence Data [Online]. Available online at: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/

[2] https://www.ncbi.nlm.nih.gov/assembly/GCF_000001635.27/

[3] Li H. and Durbin R. (2009) Fast and accurate short read alignment with Burrows-Wheeler transform. Bioinformatics, 25, 1754-1760. [PMID: 19451168]

[4] Li H, Handsaker B, Wysoker A, Fennell T, Ruan J, Homer N, Marth G, Abecasis G, Durbin R, and 1000 Genome Project Data Processing Subgroup, The Sequence alignment/map (SAM) format and SAMtools, Bioinformatics (2009) 25(16) 2078-9 [19505943]

[5] https://www.encodeproject.org/files/ENCFF547MET/

[6] . Zhang Y, et al. Model-based Analysis of ChIP-Seq (MACS) Genome Biol. 2008;9:R137–R137

[7] Stark R., Brown G. D. (2011). DiffBind: Differential Binding Analysis of ChIP-Seq Peak Data. Bioconductor. Available online at: http://bioconductor.org/packages/release/bioc/html/DiffBind.html.

[8] Q Wang#, M Li#, T Wu, L Zhan, L Li, M Chen, W Xie, Z Xie, E Hu, S Xu, G Yu*. Exploring epigenomic datasets by ChIPseeker. Current Protocols, 2022, 2(10): e585.

[9] https://genome.ucsc.edu/goldenPath/help/bigWig.html

[10] https://github.com/ENCODE-DCC/kentUtils

cd quality_control_data
rm -r                                                   ../../../../sandbox/quality_control/
cp -r ../../../../ngs_course_materials/quality_control/ ../../../../sandbox/quality_control/
cd    ../../../../sandbox/quality_control/
head f010_raw_mirna.fastq
wc -l f010_raw_mirna.fastq
mkdir f020_res_fastqc
fastqc -o f020_res_fastqc f010_raw_mirna.fastq
CTGGGAAATCACCATAAACGTGAAATGTCTTTGGATTTGGGAATCTTATAAGTTCTGTATGAGACCACTCTAAAAA
CTTTTTTTCGTCCTTTCCACAAGATATATAAAGCCAAGAAATCGAAATACTTTCAAGTTACGGTAAGC
grep "CTGGGAAATCACCATAAACGTGAAATGTCTTTGGATTTGGGAATCTTATAAGTTCTGTATGAGACCACTCTAAAAA" f010_raw_mirna.fastq 
grep "CTTTTTTTCGTCCTTTCCACAAGATATATAAAGCCAAGAAATCGAAATACTTTCAAGTTACGGTAAGC" f010_raw_mirna.fastq 
grep CTGGGAAATCACCATAAACGTGAAATGTCTTTGGATTTGGGAATCTTATAAGTTCTGTATGAGACCACTCTAAAAA f010_raw_mirna.fastq | wc -l  ## present in the sample (at the beginning of the reads)

grep GACCCTTTAGTGGTATTTGCACTTTACAGAAACCTAAACCCTTAGAATATTCAAGACATACTCTGGTGAGATTTTT f010_raw_mirna.fastq | wc -l 

grep TTTTTAGAGTGGTCTCATACAGAACTTATAAGATTCCCAAATCCAAAGACATTTCACGTTTATGGTGATTTCCCAG f010_raw_mirna.fastq | wc -l  ## present in the sample (at the end of the read) ... but not so numerous

grep AAAAATCTCACCAGAGTATGTCTTGAATATTCTAAGGGTTTAGGTTTCTGTAAAGTGCAAATACCACTAAAGGGTC f010_raw_mirna.fastq | wc -l 
grep CTGGGAAATCACCATAAACGTGAAATGTCTTTGGA f010_raw_mirna.fastq | wc -l 

grep GACCCTTTAGTGGTATTTGCACTTTACAGAAACCT f010_raw_mirna.fastq | wc -l 

grep TTTTTAGAGTGGTCTCATACAGAACTTATAAGATT f010_raw_mirna.fastq | wc -l 

grep AAAAATCTCACCAGAGTATGTCTTGAATATTCTAA f010_raw_mirna.fastq | wc -l 
grep AATCTTATAAGTTCTGTATGAGACCACTCTAAAAA f010_raw_mirna.fastq | wc -l 

grep TTAGAATATTCAAGACATACTCTGGTGAGATTTTT f010_raw_mirna.fastq | wc -l 

grep TCCAAAGACATTTCACGTTTATGGTGATTTCCCAG f010_raw_mirna.fastq | wc -l 

grep AGGTTTCTGTAAAGTGCAAATACCACTAAAGGGTC f010_raw_mirna.fastq | wc -l 
grep CTTTTTTTCGTCCTTTCCACAAGATATATAAAGCCAAGAAATCGAAATACTTTCAAGTTACGGTAAGC f010_raw_mirna.fastq | wc -l   ## present in the sample (at the end of the read) ... but not so numerous

grep GAAAAAAAGCAGGAAAGGTGTTCTATATATTTCGGTTCTTTAGCTTTATGAAAGTTCAATGCCATTCG f010_raw_mirna.fastq | wc -l 

grep GCTTACCGTAACTTGAAAGTATTTCGATTTCTTGGCTTTATATATCTTGTGGAAAGGACGAAAAAAAG f010_raw_mirna.fastq | wc -l   ## present in the sample (at the beginning of the reads)

grep CGAATGGCATTGAACTTTCATAAAGCTAAAGAACCGAAATATATAGAACACCTTTCCTGCTTTTTTTC f010_raw_mirna.fastq | wc -l 
grep CTTTTTTTCGTCCTTTCCACAAGATATATA f010_raw_mirna.fastq | wc -l 

grep GAAAAAAAGCAGGAAAGGTGTTCTATATAT f010_raw_mirna.fastq | wc -l 

grep GCTTACCGTAACTTGAAAGTATTTCGATTT f010_raw_mirna.fastq | wc -l 

grep CGAATGGCATTGAACTTTCATAAAGCTAAA f010_raw_mirna.fastq | wc -l 
grep AAGCCAAGAAATCGAAATACTTTCAAGTTACGGTAAGC f010_raw_mirna.fastq | wc -l 

grep TTCGGTTCTTTAGCTTTATGAAAGTTCAATGCCATTCG f010_raw_mirna.fastq | wc -l 

grep CTTGGCTTTATATATCTTGTGGAAAGGACGAAAAAAAG f010_raw_mirna.fastq | wc -l 

grep GAACCGAAATATATAGAACACCTTTCCTGCTTTTTTTC f010_raw_mirna.fastq | wc -l 
cutadapt -g CTGGGAAATCACCATAAACGTGAAATGTCTTTGGATTTGGGAATCTTATAAGTTCTGTATGAGACCACTCTAAAAA -o f030_mirna_trim1.fastq f010_raw_mirna.fastq

cutadapt -a TTTTTAGAGTGGTCTCATACAGAACTTATAAGATTCCCAAATCCAAAGACATTTCACGTTTATGGTGATTTCCCAG -o f030_mirna_trim2.fastq f030_mirna_trim1.fastq

cutadapt -g GCTTACCGTAACTTGAAAGTATTTCGATTTCTTGGCTTTATATATCTTGTGGAAAGGACGAAAAAAAG         -o f030_mirna_trim3.fastq f030_mirna_trim2.fastq

cutadapt -a CTTTTTTTCGTCCTTTCCACAAGATATATAAAGCCAAGAAATCGAAATACTTTCAAGTTACGGTAAGC         -o f030_mirna_trim4.fastq f030_mirna_trim3.fastq
grep CTGGGAAATCACCATAAACGTGAAATGTCTTTGGATTTGGGAATCTTATAAGTTCTGTATGAGACCACTCTAAAAA f030_mirna_trim4.fastq | wc -l

#grep GACCCTTTAGTGGTATTTGCACTTTACAGAAACCTAAACCCTTAGAATATTCAAGACATACTCTGGTGAGATTTTT f030_mirna_trim4.fastq | wc -l 

grep TTTTTAGAGTGGTCTCATACAGAACTTATAAGATTCCCAAATCCAAAGACATTTCACGTTTATGGTGATTTCCCAG f030_mirna_trim4.fastq | wc -l

#grep AAAAATCTCACCAGAGTATGTCTTGAATATTCTAAGGGTTTAGGTTTCTGTAAAGTGCAAATACCACTAAAGGGTC f030_mirna_trim4.fastq | wc -l 
grep CTTTTTTTCGTCCTTTCCACAAGATATATAAAGCCAAGAAATCGAAATACTTTCAAGTTACGGTAAGC f030_mirna_trim4.fastq | wc -l

#grep GAAAAAAAGCAGGAAAGGTGTTCTATATATTTCGGTTCTTTAGCTTTATGAAAGTTCAATGCCATTCG f030_mirna_trim4.fastq | wc -l 

grep GCTTACCGTAACTTGAAAGTATTTCGATTTCTTGGCTTTATATATCTTGTGGAAAGGACGAAAAAAAG f030_mirna_trim4.fastq | wc -l

#grep CGAATGGCATTGAACTTTCATAAAGCTAAAGAACCGAAATATATAGAACACCTTTCCTGCTTTTTTTC f030_mirna_trim4.fastq | wc -l 
mkdir f040_res_fastqc_trimmed
fastqc -o f040_res_fastqc_trimmed f030_mirna_trim4.fastq
cutadapt -m 17 -M 30 -q 10 -o f040_mirna_cut.fastq f030_mirna_trim4.fastq
mkdir f050_res_fastqc_trimmed_purged

fastqc -o f050_res_fastqc_trimmed_purged f040_mirna_cut.fastq
wc -l f010_raw_mirna.fastq

wc -l f040_mirna_cut.fastq

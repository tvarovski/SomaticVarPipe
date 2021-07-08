#$ -q TELOMER,UI-HM
#$ -pe smp 56
#$ -cwd
#$ -r y
# -j y
# -o /dev/null
#$ -l datacenter=LC


dir="../"
ref="/Users/twarowski/exp_shared/1003/1003.fa"

#for batch processing

for i in $dir*R1*; do
    r1=$i
    #echo $r1
    r2=${i/R1/R2}
    #echo $r2
    OUT=${i%_R1_001.fastq.gz}
    OUT=${OUT#$dir}
    echo $OUT
    bwa mem -t 56 -R "@RG\tID:$OUT\tSM:$OUT\tPL:ILLUMINA\tPI:330" $ref $r1 $r2 > $OUT.sam
    samtools sort -@56 -m 2G -O bam -T temp.sort -o $OUT.sorted.bam $OUT.sam

done


#for individual samples 

#r1="/Users/twarowski/Beths/BO10_G6-G6_GAATTCGT-CAGGACGT_S48_L004_R1_001.fastq.gz"
#r2="/Users/twarowski/Beths/BO10_G6-G6_GAATTCGT-CAGGACGT_S48_L004_R2_001.fastq.gz"

#bwa mem -t 56 $ref $r1 $r2 > $OUT.sam
#samtools sort -@56 -m 2G -O bam -T temp.sort -o $OUT.sorted.bam $OUT.sam


#############################################################

#$dir=""

#for i in $dir*R1*; do
#    r1=$i
#    #echo $r1
#    r2=${i/R1/R2}
#    #echo $r2
#    OUT=${i%_R1_001.fastq.gz}
#    OUT=${OUT#$dir}
#    echo $OUT
#    bwa mem -t 56 $ref $r1 $r2 > $OUT.sam
#    samtools sort -@56 -m 2G -O bam -T temp.sort -o $OUT.sorted.bam $OUT.sam

#done


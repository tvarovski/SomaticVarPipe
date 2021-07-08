module load gatk

dir=""
ref="/Users/twarowski/exp_shared/1003/1003.fa"


#for i in ${dir}*.vcf; do
#    echo $i
#    input=$i
#    output=${i%.vcf}.maf
#
#    gatk Funcotator \
#        -R reference.fasta \
#        -V $input \
#        -O $output \
#        --output-file-format MAF
#done



for i in ${dir}*.vcf; do

    output=${i%.vcf}.maf
    perl maf_tables/mskcc-vcf2maf-754d68a/vcf2maf.pl --input-vcf $i --output-maf maf_tables/$output --inhibit-vep --ref-fasta $ref

done


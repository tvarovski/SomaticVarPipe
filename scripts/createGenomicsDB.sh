#$ -q TELOMER,UI
#$ -pe smp 16
#$ -cwd
#$ -r y
# -j y
# -o /dev/null
#$ -l datacenter=LC


dir=""
ref="/Users/twarowski/exp_shared/1003/1003.fa"

module load stack/2021.1
module load gatk/4.1.8.1_gcc-9.3.0


gatk --java-options "-Xmx4g -Xms4g" GenomicsDBImport -R $ref -L BO1_F5-F5_ATTCAGAA-TAATCTTA_S47_L004.tumor.vcf.gz -ip 100 --genomicsdb-workspace-path pon_db \
    -V BO11_H6-H6_GAATTCGT-GTACTGAC_S49_L004.tumor.vcf.gz \
    -V BO12_A7-A7_CTGAAGCT-TATAGCCT_S50_L004.tumor.vcf.gz \
    -V BO13_B7-B7_CTGAAGCT-ATAGAGGC_S51_L004.tumor.vcf.gz \
    -V BO14_C7-C7_CTGAAGCT-CCTATCCT_S52_L004.tumor.vcf.gz \
    -V BO15_D7-D7_CTGAAGCT-GGCTCTGA_S53_L004.tumor.vcf.gz \
    -V BO16_E7-E7_CTGAAGCT-AGGCGAAG_S54_L004.tumor.vcf.gz \
    -V BO17_F7-F7_CTGAAGCT-TAATCTTA_S55_L004.tumor.vcf.gz \
    -V BO18_G7-G7_CTGAAGCT-CAGGACGT_S56_L004.tumor.vcf.gz \
    -V BO19_H7-H7_CTGAAGCT-GTACTGAC_S57_L004.tumor.vcf.gz \
    -V BO1_F5-F5_ATTCAGAA-TAATCTTA_S47_L004.tumor.vcf.gz \
    -V BO20_A8-A8_TAATGCGC-TATAGCCT_S59_L004.tumor.vcf.gz \
    -V BO21_B8-B8_TAATGCGC-ATAGAGGC_S60_L004.tumor.vcf.gz \
    -V BO22_C8-C8_TAATGCGC-CCTATCCT_S61_L004.tumor.vcf.gz \
    -V BO23_D8-D8_TAATGCGC-GGCTCTGA_S62_L004.tumor.vcf.gz \
    -V BO24_E8-E8_TAATGCGC-AGGCGAAG_S63_L004.tumor.vcf.gz \
    -V BO25_F8-F8_TAATGCGC-TAATCTTA_S64_L004.tumor.vcf.gz \
    -V BO26_G8-G8_TAATGCGC-CAGGACGT_S65_L004.tumor.vcf.gz \
    -V BO27_H8-H8_TAATGCGC-GTACTGAC_S66_L004.tumor.vcf.gz \
    -V BO28_A9-A9_CGGCTATG-TATAGCCT_S67_L004.tumor.vcf.gz \
    -V BO29_B9-B9_CGGCTATG-ATAGAGGC_S68_L004.tumor.vcf.gz \
    -V BO2_G5-G5_ATTCAGAA-CAGGACGT_S58_L004.tumor.vcf.gz \
    -V BO30_C9-C9_CGGCTATG-CCTATCCT_S70_L004.tumor.vcf.gz \
    -V BO3_H5-H5_ATTCAGAA-GTACTGAC_S69_L004.tumor.vcf.gz \
    -V BO4_A6-A6_GAATTCGT-TATAGCCT_S71_L004.tumor.vcf.gz \
    -V BO5_B6-B6_GAATTCGT-ATAGAGGC_S72_L004.tumor.vcf.gz \
    -V BO6_C6-C6_GAATTCGT-CCTATCCT_S73_L004.tumor.vcf.gz \
    -V BO7_D6-D6_GAATTCGT-GGCTCTGA_S74_L004.tumor.vcf.gz \
    -V BO8_E6-E6_GAATTCGT-AGGCGAAG_S75_L004.tumor.vcf.gz \
    -V BO9_F6-F6_GAATTCGT-TAATCTTA_S76_L004.tumor.vcf.gz

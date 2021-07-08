# SomaticVarPipe
Repository to hold information on how to run GATK Mutect2 Somatic Variant discovery on Argon at UIowa

## How to do Mutect2 calling

### Create bam files from the reads and sort
`./createbams.sh`

### Add missing Read Groups to the read headers
`./add_RG.sh`

### Run Mutect2 in your tumor only mode
`./tumorOnlyMode.sh`

### Create DataBase to be used in making the Panel of Normals
`./createGenomicsDB.sh`

### Make Panel of Normals (PON)
`./createPON.sh`

### Call mutations by Mutect2
`./mutect2_calling.sh`

### (Optional Branch-1) Convert VCF into tsv format that can be next used by pandas
`vcf_to_tsv.sh`

### (Optional Branch-2) Convert VCF into MAF format that can be used for clustering


| FileName | Short Description |
| --- | --- |
| createbams.sh | takes input reads and outputs bam files |
| tumorOnlyMode.sh | Runs Mutect2 in a tumor-only mode |
| add_RG.sh | adds Read Groups with sample information to the reads headers |
| createGenomicsDB.sh | Create DataBase to be used in making the Panel of Normals | 
| createPON.sh | For creating PON by using GenomicDB |
| mutect2_calling.sh | Mutect2 mutation calling script |
| vcf_to_tsv.sh | Convert VCF into tsv format |






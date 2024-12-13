# GenomeEvaluation

This repository contains the EBP-Nor genome evaluation pipeline. It is implemented in Snakemake and set up to run on our infrastructure using SLURM as a job manager. As it is written currently, it is quite tightly linked to the specific environment, but we hope to untangle this over time. 

This is work in progress, but hosted here for convenience and transparency. 

This workflow basically runs different programs towards the two pseudo-haplotype assemblies to generate different metrics and statistics which is useful for reporting in a genome note/report. 


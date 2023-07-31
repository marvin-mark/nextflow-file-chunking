# nextflow-file-chunking
Nextflow pipeline to run file-chunking on vcf files using genomic-utils chunker (https://github.com/genepi/genomic-utils/tree/chunker). 

## Installation

1) Clone Repository
``` 
git clone https://github.com/marvin-mark/nf-file-chunking
```

2) Install [Nextflow] --> in same directory as step 1 (https://www.nextflow.io/docs/latest/getstarted.html#installation) (>=21.04.0) 

3) Navigate into directory
```
cd nf-file-chunking
```

4) build Dockerfile
```
sudo docker build -t nf_file_chunking . #dot is important
```

5) Run main.nf

$PATH set for nextflow: <br>
```
sudo nextflow run main.nf -profile docker,test
```
$PATH not set: 
```
sudo ./nextflow run main.nf -profile docker,test 
```
if the $PATH is not set the you need the correct path for your nextflow installation ("./" is in the current directory)

## Contact
* [Marvin Mark](mailto:marvin.mark@gmx.at)
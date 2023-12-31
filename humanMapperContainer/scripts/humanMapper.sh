#read_1 read_2 index threads
file=$1
file_fullname=$(basename $file)
file_name=$(echo ${file_fullname} | cut -d'.' -f1) #file name without extension
patient=$(echo ${file_name} | cut -d'_' -f1)

index=$3
threads=$4

time {
	bwa mem -t $threads $index $1 $2 > ${file_name}_pe.sam
	samtools fastq -f 4 -@ $threads ${file_name}_pe.sam > ${file_name}_unmapped.fastq

	python3 /scripts/divide_fastq.py ${file_name}_unmapped.fastq ${patient}_unmapped_R1.fastq ${patient}_unmapped_R2.fastq
	gzip ${patient}_unmapped_R1.fastq
	gzip ${patient}_unmapped_R2.fastq
}

# microbiomeAnalysisCWL

MicrobiomeAnalisys cwl is a workflow that uses doker for manteining reproducibility.
it's designed for mapping a genome in input using (in this case) two index, the hg38 and chm13 , and give in output all the genome sequences that 
doesn't give  a match.
In the second part it uses Kraken2 to determinate whoose are the non human sequences discovered in the first part.

# How to

To Run this program you need to have 

# More in detail

In case someone is willing to modify this workflow to adapt it for other indexes i will give a more in-depht looking to the code.
First thing first for tinker with the code is advisable to have same basic knowledge of cwl, python and  bash. Futhermore to run this code 
is highly advise to have a Linux os (I used ubuntu).
Our journey starts with the workflow.cwl and index.yml, these are the two starting point of our program. The first one contains all the passage that our 
workflow needs to to and, like all cwl, is composed of intestation with cwl version and class, requirements (), inputs, outputs and  steps.

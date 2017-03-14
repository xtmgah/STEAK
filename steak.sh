#!/bin/bash

# This file provides an example of how to run STEAK

export OMP_NUM_THREADS=8

NAME=example
CIGAR_CEILING=1
SMITH_WATERMAN_THRESHOLD=0.90
MINIMAL_TRIMMED_LENGTH=20
REFERENCE_FILE=HK113LTR.fasta
BAIT_LENGTH=20


samtools view ${NAME}.bam | stdbuf -oL ${HOME}/steak/steak paired ${NAME} ${CIGAR_CEILING} ${SMITH_WATERMAN_THRESHOLD} ${MINIMAL_TRIMMED_LENGTH} ${REFERENCE_FILE} ${BAIT_LENGTH}

samtools view ${NAME}.bam| stdbuf -oL ${HOME}/steak/steak unpaired ${NAME} ${CIGAR_CEILING} ${SMITH_WATERMAN_THRESHOLD} ${MINIMAL_TRIMMED_LENGTH} ${REFERENCE_FILE} ${BAIT_LENGTH}

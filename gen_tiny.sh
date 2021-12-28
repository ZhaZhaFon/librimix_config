#!/bin/bash
set -eu  # Exit on error

### TODO ###
storage_dir=/home/zzf/dataset/librimix
librispeech_dir=/home/zzf/corpus/librispeech/LibriSpeech
wham_dir=/home/zzf/dataset/wham_noise
librimix_outdir=$storage_dir
### TODO ###

python_path=python3

### TODO ###
for n_src in 2; do
    metadata_dir=metadata/Libri$n_src"Mix-clean-100"
    $python_path scripts/create_librimix_from_metadata.py --librispeech_dir $librispeech_dir \
        --wham_dir $wham_dir \
        --metadata_dir $metadata_dir \
        --librimix_outdir $librimix_outdir \
        --n_src $n_src \
        --freqs 16k \
        --modes min \
        --types mix_clean mix_both mix_single
done
### TODO ###
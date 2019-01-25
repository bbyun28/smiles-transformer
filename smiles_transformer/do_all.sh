#!/bin/sh

python preprocess_for_bert.py -p 32
python build_corpus.py
python build_vocab.py
python pretrain.py --gpu 0 1 2 3 -w 32
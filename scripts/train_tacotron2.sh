mkdir -p output
python -m multiproc -u train.py -m Tacotron2 -o ./output/ --log-file tacotron.json --seed 0 --resume-from-last --amp --cudnn-enabled --filter-length 512 --win-length 512 --hop-length 256 --n-mel-channels 80 --epochs-per-checkpoint 1 --epochs 3 -lr 1e-3 -bs 128 --weight-decay 1e-6 --grad-clip-thresh 1.0 ----anneal-steps 3 6 9 --anneal-factor 0.1 --symbols-embedding-dim 256 --encoder-kernel-size 3 --encoder-n-convolutions 2 --encoder-embedding-dim 256 --decoder-rnn-dim 512 --prenet-dim 128 --max-decoder-steps 1000 --attention-rnn-dim 512 --attention-dim 64 --attention-location-n-filters 16 --attention-location-kernel-size 15 --postnet-embedding-dim 256 --postnet-kernel-size 3 --postnet-n-convolutions 3

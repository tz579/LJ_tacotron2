mkdir -p output
python -m multiproc -u train.py -m WaveGlow  -o ./output/ --log-file waveglow.json --seed 0 --resume-from-last --amp --cudnn-enabled --filter-length 512 --win-length 512 --hop-length 256 --epochs-per-checkpoint 1 --epochs 2 -lr 1e-4 -bs 64 --weight-decay 0e-0 --grad-clip-thresh 3.4028234663852886e+38 --segment-length 4000 --wn-channels 128

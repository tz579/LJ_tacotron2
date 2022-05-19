mkdir -p output
python -u -m multiproc train.py -m WaveGlow  -o ./output/ --log-file waveglow.json --seed 0 --resume-from-last --amp --cudnn-enabled --epochs-per-checkpoint 1 --epochs 2 -lr 1e-4 -bs 64 --weight-decay 0e-0 --grad-clip-thresh 3.4028234663852886e+38 --segment-length 8000 --wn-channels 128

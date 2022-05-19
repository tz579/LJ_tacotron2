mkdir -p output
python -m multiproc train.py -m WaveGlow  -o ./output/ --log-file waveglow.json --seed 0 --resume-from-last --amp --cudnn-enabled --epochs-per-checkpoint 1 --epochs 1 -lr 1e-4 -bs 04 --weight-decay 0e-0 --grad-clip-thresh 3.4028234663852886e+38 --segment-length 8000 --wn-channels 256

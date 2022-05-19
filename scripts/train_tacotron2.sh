mkdir -p output
python -u -m multiproc train.py -m Tacotron2 -o ./output/ --log-file tacotron.json --seed 0 --resume-from-last --amp --cudnn-enabled --epochs-per-checkpoint 1 --epochs 2 -lr 1e-3 -bs 64 --weight-decay 1e-6 --grad-clip-thresh 1.0 ----anneal-steps 2 4 --anneal-factor 0.1

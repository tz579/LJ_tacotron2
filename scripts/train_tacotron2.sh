mkdir -p output
python -m multiproc -u train.py -m Tacotron2 -o ./output/ --log-file tacotron.json --seed 0 --resume-from-last --amp --cudnn-enabled --filter-length 512 --win-length 512 --hop-length 256 --epochs-per-checkpoint 1 --epochs 2 -lr 1e-3 -bs 64 --weight-decay 1e-6 --grad-clip-thresh 1.0 ----anneal-steps 2 4 --anneal-factor 0.1

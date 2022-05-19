mkdir -p output
python -u -m multiproc inference.py --tacotron2 output/checkpoint_Tacotron2_last.pt --waveglow output/checkpoint_WaveGlow_last.pt -i phrases/phrase.txt -o ./output/ --log-file inference.json --fp16 --segment-length 8000 --wn-channels 128

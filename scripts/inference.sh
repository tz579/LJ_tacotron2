mkdir -p output
python -m multiproc -u inference.py --tacotron2 output/checkpoint_Tacotron2_last.pt --waveglow output/checkpoint_WaveGlow_last.pt -i phrases/phrase.txt -o ./output/ --log-file inference.json --fp16 --stft-hop-length 256 --segment-length 4000 --wn-channels 128

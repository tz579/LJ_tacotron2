mkdir -p output
python inference.py --tacotron2 output/checkpoint_Tacotron2_last.pt --waveglow output/checkpoint_WaveGlow_last.pt -i phrases/phrase.txt -o ./output/ --fp16

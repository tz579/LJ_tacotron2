bash scripts/prepare_dataset.sh
bash scripts/prepare_mels.sh
bash scripts/train_tacotron2.sh
bash scripts/train_waveglow.sh
python inference.py --tacotron2 checkpoint_Tacotron2_last.pt --waveglow checkpoint_Waveglow_last.pt -o output/ -i phrases/phrase.txt --fp16

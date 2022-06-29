#export CUDA_VISIBLE_DEVICES="0,1"
export CUDA_VISIBLE_DEVICES="0"
export PYTORCH_JIT=0

#rm -r LJSpeech-1.1/mels
#rm -r output_old
#mv output output_old

bash scripts/prepare_dataset.sh
bash scripts/prepare_mels.sh
bash scripts/train_tacotron2.1epoch.littlebs.sh
bash scripts/train_waveglow.1epoch.littlebs.sh
bash scripts/inference.sh

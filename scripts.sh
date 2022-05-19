#export CUDA_VISIBLE_DEVICES="0,1"
export CUDA_VISIBLE_DEVICES="0"
export PYTORCH_JIT=0

rm -r output_old LJSpeech-1.1/mels
mv output output_old

#bash scripts/prepare_dataset.sh
#bash scripts/prepare_mels.sh
bash scripts/train_tacotron2.sh
bash scripts/train_waveglow.sh
bash scripts/inference.sh

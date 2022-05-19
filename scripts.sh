#export CUDA_VISIBLE_DEVICES="0,1"
export CUDA_VISIBLE_DEVICES="0"
export PYTORCH_JIT=0
#bash scripts/prepare_dataset.sh
#bash scripts/prepare_mels.sh
bash scripts/train_tacotron2.sh
bash scripts/train_waveglow.sh
bash scripts/inference.sh

export CUDA_VISIBLE_DEVICES=
export PYTORCH_JIT=0
#bash scripts/prepare_dataset.sh
#bash scripts/prepare_mels.sh
bash scripts/train_tacotron2.sh
bash scripts/train_waveglow.sh
bash scripts/inference.sh

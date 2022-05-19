#!/usr/bin/env bash

set -e

DATADIR="LJSpeech-1.1"
FILELISTSDIR="filelists"

TESTLIST="$FILELISTSDIR/ljs_audio_text_test_filelist.txt"
TRAINLIST="$FILELISTSDIR/ljs_audio_text_train_filelist.txt"
VALLIST="$FILELISTSDIR/ljs_audio_text_val_filelist.txt"

TESTLIST_MEL="$FILELISTSDIR/ljs_mel_text_test_filelist.txt"
TRAINLIST_MEL="$FILELISTSDIR/ljs_mel_text_train_filelist.txt"
VALLIST_MEL="$FILELISTSDIR/ljs_mel_text_val_filelist.txt"

mkdir -p "$DATADIR/mels"
if [ $(ls $DATADIR/mels | wc -l) -ne 13100 ]; then
    python preprocess_audio2mel.py --filter-length 512 --win-length 512 --hop-length 256 --n-mel-channels 40 --wav-files "$TRAINLIST" --mel-files "$TRAINLIST_MEL"
    python preprocess_audio2mel.py --filter-length 512 --win-length 512 --hop-length 256 --n-mel-channels 40 --wav-files "$TESTLIST" --mel-files "$TESTLIST_MEL"
    python preprocess_audio2mel.py --filter-length 512 --win-length 512 --hop-length 256 --n-mel-channels 40 --wav-files "$VALLIST" --mel-files "$VALLIST_MEL"	
fi	

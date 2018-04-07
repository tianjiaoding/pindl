if [ ! -d "./data" ]; then
  mkdir ./data
fi
export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;
python pindl.py -a ASRZY6yI_fCuOKmMA-oL4suhESJSFSM1WT9U5ZRE1bNXfAAyxwAAAAA -b boards -o ./data/


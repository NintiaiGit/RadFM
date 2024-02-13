sudo apt-get update
sudo apt-get install -y curl
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o conda_installer.sh
bash conda_installer.sh
conda create -n radFm python=3.10
conda activate radFm
pip install -r req.txt
pip install huggingface_hub
pip install -U "huggingface_hub[cli]"
baji=$(pwd)
export HF_DATASETS_CACHE=$baji/Kache
huggingface-cli download chaoyi-wu/RadFM pytorch_model.zip  —local-dir .
python rad.py
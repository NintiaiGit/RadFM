from huggingface_hub import hf_hub_download
import joblib

REPO_ID = "chaoyi-wu/RadFM"
FILENAME = "pytorch_model.zip"

model = joblib.load(hf_hub_download(repo_id=REPO_ID, filename=FILENAME))

# https://huggingface.co/chaoyi-wu/RadFM/resolve/main/pytorch_model.zip?download=true

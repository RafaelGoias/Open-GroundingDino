import os
from transformers import AutoTokenizer, AutoModel

os.makedirs("bert", exist_ok=True)
tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")

model = AutoModel.from_pretrained("bert-base-uncased")
tokenizer.save_pretrained('bert')
model.save_pretrained('bert')

print("Modelo BERT baixado e salvo com sucesso.")
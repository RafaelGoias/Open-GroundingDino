## Passo a Passo para treinar o modelo:

### Passo 1: Clonar o Repositório:

```python
git clone https://github.com/longzw1997/Open-GroundingDino
```

### Passo 2: Navegar para o Diretório Open-GroundingDino:

```python
cd Open-GroundingDino
```

### Passo 3: Instalar os Pacotes Python Necessários:

```python
pip install -r requirements.txt
```

### Passo 4: Compilar e instalar as Extensões CUDA:

```python
cd models/GroundingDINO/ops
```

```python
python setup.py install
```

### Passo 6: Testar a Instalação:

```python
python setup.py install
```

### Passo 7: Retornar ao Diretório Raiz:

```python
cd ~ ou /caminho do diretorio/
```

### Passo 8: Baixar o Dataset:

```python
pip install gdown
gdown --id 1F1OLySdwvR08kqjLaXzXdPzc-0_aWQtS -O formated.zip

Ou
gdown https://drive.google.com/uc?id=1F1OLySdwvR08kqjLaXzXdPzc-0_aWQtS -O formated.zip
```

### Passo 9: Preparar o Dataset:

```python
mkdir -p panoramic_data

cd panoramic_data

unzip -q ../formated.zip

cd ..
```

### Passo 10: label.json

Já está criado no diretório. Neste está o mapa das labels.

### Passo 11: Baixar os Pesos Pré-Treinados:

```python
    wget https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha/groundingdino_swint_ogc.pth
```

Se não der certo:

```python
    wget https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha/groundingdino_swint_ogc.pth&ved=2ahUKEwjLqsnAstiGAxVPbGwGHbcOADAQFnoECBYQAQ&usg=AOvVaw1HJopClO4_-MXLi9Ae6-le
```

### Passo 12: Baixar e Salvar o Modelo BERT:

```python
    python download_bert.py
```

### Passo 13: Atualizar train_dist.sh e Iniciar o Treinamento:

Torne o script executável:

```python
    chmod +x Open-GroundingDino/train_dist.sh
```

### Iniciar o Treinamento:

```python
    cd Open-GroundingDino

    GPU_NUM=-1
    CFG="config/cfg_odvg.py"
    DATASETS="config/datasets_mixed_odvg.json"
    OUTPUT_DIR="../output"

    chmod +x train_dist.sh

    bash train_dist.sh ${CFG} ${DATASETS} ${OUTPUT_DIR}
```

### Caso queira alterar os parâmetros no treinamento:
```
cd Open-GroundingDino/config
```

arquivo -> cfg_odvg.py 

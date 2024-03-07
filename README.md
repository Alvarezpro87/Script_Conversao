# Conversor de Vídeo para .mov

Este script automatiza a conversão de arquivos de vídeo para o formato .mov, independente da extensão original, e depois os divide em partes menores, se necessário.

## Pré-requisitos

Antes de executar o script, certifique-se de que:

1. Você está executando o script em um sistema Linux, de preferência UBUNTU.
2. o FFmpeg está instalado.
3. o MP4Box está instalado.

Caso não esteja utilize este comando no UBUNTU:

```bash
sudo apt update
sudo apt install ffmpeg gpac
```

## Configuração do Script

Edite as seguintes variáveis no início do script:

1. SRC="/caminho/para/pasta/de/origem": Pasta contendo os vídeos a serem convertidos.

2. DEST="/caminho/para/pasta/de/destino": Pasta onde os vídeos convertidos serão salvos.

3. DEST_EXT="mov": Define a extensão de arquivo .mov para os arquivos convertidos.

4. SPLIT_SIZE="tamanho desejado": Tamanho, em KB, para dividir os arquivos convertidos.

5. Torne o script executável com o comando:

```bash
chmod +x conversaovideo.sh
```

6. Execute o script:

```bash
bash conversaovideo.sh
```

## Notas Adicionais

- Certifique-se de que os diretórios SRC e DEST existam antes de executar o script.
- O script suporta a conversão de qualquer formato de arquivo suportado pelo FFmpeg para .mov.
#!/bin/bash

# Configuração
SRC=  "/caminho/para/pasta/de/origem" # Atualize com o caminho da pasta de origem
DEST="/caminho/para/pasta/de/destino" # Atualize com o caminho da pasta de destino
DEST_EXT="mov"  # Formato de arquivo de destino
FFMPEG="ffmpeg"
MP4BOX="MP4Box"
SPLIT_SIZE="tamanho desejado"  # Tamanho para dividir os arquivos, em KB

# Verifica se os diretórios existem
if [ ! -d "$SRC" ] || [ ! -d "$DEST" ]; then
  echo "O diretório de origem ou destino não existe."
  exit 1
fi

# Conversão de arquivos
for FILE in "$SRC"/*; do
  if [ -f "$FILE" ]; then
    echo "!!!!!!!!!!!!!!!!!!!!!!!!CONVERTENDO ARQUIVO: $FILE !!!!!!!!!!!!!!!!!!!!!!!!"
    filename=$(basename -- "$FILE")
    filename="${filename%.*}"
    $FFMPEG -i "$FILE" "$DEST/$filename.$DEST_EXT"
  fi
done

# Divisão dos arquivos convertidos
for ARQ in "$DEST"/*.$DEST_EXT; do
  if [ -f "$ARQ" ]; then
    echo "DIVIDINDO ARQUIVO: $ARQ"
    $MP4BOX -splits $SPLIT_SIZE "$ARQ"
  fi
done

#!/usr/bin/env bash
#
# -------------------------------------------------------------------------------------------------------------------------- #
# ------------------------------------------------- FUNÇÕES ------------------------------------------------- #
Imagens() {
  mv *.png *.jpg ./Imagens 2> /dev/null
}

Multimidia() {
  mv *.mp4 *.mkv *.mp3 *.ogg ./Multimidia 2> /dev/null
}

Documentos() {
  mv *.pdf *.docx *.pptx *.doc *.xlsx *.txt *.sh ./Documentos 2> /dev/null
}

Pacotes() {
  mv *.deb *.bin *.run *.zip *.tar.xz ./Pacotes 2> /dev/null
}

Imagem_Disco() {
  mv *.iso ./Distros 2> /dev/null
}
# -------------------------------------------------------------------------------------------------------------------------- #
# ------------------------------------------------- EXECUÇÃO ------------------------------------------------ #
#Nesse script eu criei os diretórios Imagens, Multimidia, Documentos e etc dentro da pasta de Downloads para
#organizar os arquivos que são baixados. Por exemplo, se um arquivo pdf for baixado, ele será movido para a pasta
#Documentos dentro de um determinado tempo configurado no crontab.

cd $HOME/Downloads/

#Imagens
[ "*.png" -o "*.jpg" ] && Imagens

#Multimidia
[ "*.mp4" -o "*.mkv" -o "*.mp3" -o "*.ogg" ] && Multimidia

#Documentos
[ "*.pdf" -o "*.docx" -o "*.pptx" -o "*.doc" -o "*.xlsx" -o "*.txt" -o "*.sh" ] && Documentos

#Pacotes
[ "*.deb" -o "*.run" -o "*.zip" -o "*.tar.xz" ] && Pacotes

#Imagem de disco
[ "*.iso" ] && Imagem_Disco
# -------------------------------------------------------------------------------------------------------------------------- #

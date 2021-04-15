#!/usr/bin/env bash
#
# -------------------------------------------------------------------------------------------------------------------------- #
# ------------------------------------------------ VARIÁVEIS------------------------------------------------- #
AMARELO="\033[33;1m"
# -------------------------------------------------------------------------------------------------------------------------- #
# ------------------------------------------------- TESTES -------------------------------------------------- # 
echo -e "${AMARELO}\nOrganizador Automático de Diretório\n" && tput sgr0

crontab -l | grep "auto-mvfile.sh"
if [ ! $? -eq 0 ]; then
  echo -e "Você ainda não configurou o tempo de execução no agendador Crontab!\n"
  echo -e "Deseja configurar o tempo de execução do script? [s/n]\n"
  read -r resposta
else
  echo -e "\nHá uma configuração válida no agendador Crontab\n"
  echo -e "Deseja alterar o tempo de execução? [s/n]\n"
  read -r resposta
fi
# -------------------------------------------------------------------------------------------------------------------------- #
# ------------------------------------------------- EXECUÇÃO ------------------------------------------------ #
while [ -n "$resposta" ]; do
  case "$resposta" in
    Sim|sim|S|s) crontab -e && exit ;;
    Nao|nao|N|n) exit 0 ;;
              *) echo -e "\nDigite 's' para sim ou 'n' para não.\n" && exit 1;;
  esac
done
# -------------------------------------------------------------------------------------------------------------------------- #

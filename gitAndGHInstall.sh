#! /bin/bash
#
###############################################
# Ejecutar script con permisos de instalación #
###############################################
#
# Instalación de cURL
apt install curl
# Añadir el cliente de github al gestor de paquetes
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
# Actualizar el gestor de paquetes
apt update
# Instalar Git
apt install git
# Instalar cliente GitHub
apt install gh

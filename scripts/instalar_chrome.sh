#instalar_chrome.sh
#chmod +x instalar_chrome.sh

#!/bin/bash

# Actualizar lista de paquetes e instalar dependencias
echo "Actualizando lista de paquetes e instalando dependencias..."
sudo apt update
sudo apt install -y wget gdebi-core

# Pausa para verificar dependencias
read -p "Dependencias instaladas. Presiona Enter para continuar con la descarga de Google Chrome..."

# Descargar el paquete de Google Chrome
#echo "Descargando el paquete de Google Chrome..."
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Pausa para verificar la descarga
#read -p "Paquete descargado. Presiona Enter para continuar con la instalación de Google Chrome..."

# Instalar Google Chrome
echo "Instalando Google Chrome..."
sudo gdebi -n google-chrome-stable_current_amd64.deb

# Limpiar archivos descargados
rm google-chrome-stable_current_amd64.deb

# Mensaje de finalización
echo "Google Chrome ha sido instalado exitosamente."


# 👤 FiveM Player ID Display Script

Sistema simple y optimizado para mostrar las **IDs de los jugadores encima de su cabeza** en FiveM.  
Ligero, configurable y compatible con cualquier framework.

Simple and optimized system to display **player IDs above their heads** in FiveM.  
Lightweight, configurable, and compatible with any framework.

---

## 📌 Características | Features

### 🇪🇸 Castellano
- Muestra la **ID del servidor** encima de la cabeza del jugador  
- Activación/desactivación con comando  
- Sistema optimizado (bajo consumo de rendimiento)  
- Distancia máxima configurable  
- Texto limpio sin fondo  
- Compatible con ESX, QBCore y servidores standalone  

### 🇬🇧 English
- Shows **server ID** above player heads  
- Toggle system via command  
- Optimized performance (low resource usage)  
- Configurable draw distance  
- Clean text without background  
- Compatible with ESX, QBCore and standalone servers  

---

## 🎮 Comandos | Commands


/ids


- Activa o desactiva la visualización de IDs  
- Toggle player ID display on/off  

---

## ⚙️ Instalación | Installation

### 🇪🇸 Castellano
1. Descarga o clona este repositorio  
2. Coloca la carpeta en tu directorio `resources`  
3. Añade en tu `server.cfg`:


ensure nombre-del-recurso


4. Reinicia el servidor  

---

### 🇬🇧 English
1. Download or clone this repository  
2. Place the folder inside your `resources` directory  
3. Add to your `server.cfg`:


ensure resource-name


4. Restart your server  

---

## 📁 Estructura | Structure


resource/
│
├── client.lua
├── fxmanifest.lua
└── README.md


---

## 🔧 Configuración | Configuration

Puedes modificar fácilmente:

- Distancia de renderizado  
- Altura del texto sobre la cabeza  
- Estilo del texto (fuente, escala, etc.)  

You can easily modify:

- Draw distance  
- Text height offset  
- Text style (font, scale, etc.)  

---

## ⚡ Optimización | Optimization

- Bajo consumo de CPU  
- Loop optimizado con control de renderizado  
- Dibujo solo cuando es necesario  
- Filtrado por distancia  

- Low CPU usage  
- Optimized loop with controlled rendering  
- Draw only when needed  
- Distance filtering  

---

## 🧠 Notas | Notes

### 🇪🇸 Castellano
Este script está pensado para servidores roleplay que necesitan una forma simple y ligera de identificar jugadores sin interfaces complejas.

### 🇬🇧 English
This script is designed for roleplay servers that need a simple and lightweight way to identify players without complex UI systems.

---

## 📜 Licencia | License

Uso libre para servidores personales y comerciales.  
Free to use for personal and commercial servers.
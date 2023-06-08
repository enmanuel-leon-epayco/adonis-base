# MS-WOM ![NODEJS)](https://img.shields.io/badge/nodejs-V14.21.3-green) ![docker build](https://img.shields.io/badge/docker%20build-passing-green)

_Alojamiento de servicios de recaudo personalizados para Wom._

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

## Pre-requisitos 📋

Obligatorio si no se usa docker:

- Node@14.21.3~lts
- NPM@6.14

Para usar docker

- docker
- docker-compose
- make (opcional)

## Instalación 🔧

### Paso 1: Configura las credenciales

Crea en la raíz del proyecto un archivo con el nombre **.env** que contenga el mismo contendido del archivo **.env.example**, luego personaliza el **.env** con tus credenciales otorgadas por el equipo de desarrollo.

### Paso 2: Usando Docker y Docker Compose

Verifica que tengas instalado el servicio de **Docker** y **Docker Compose** en tu maquina local, de no ser asi por favor diríjase al siguiente enlace y sigue los pasos que allí se describen.

[Instalación de Docker](https://docs.docker.com/get-docker/)

[Instalación de Docker Compose (solo en el caso de linux)](https://docs.docker.com/compose/install/)

#### Archivo Make

_Dentro del proyecto se encuentra un archivo make para facilitar el trabajo con docker el cual contiene los siguientes comandos:_

```sh
ms-lachec-back$ make
usage: make [target]

targets:
    help        Muestra este mensaje de ayuda
    install     Instala las dependencias con NPM
    run       Arranca el contenedor en modo produccion
    run-dev   Arranca el contenedor en modo desarrollo
    restart     Reinicia el contenedor
    stop        Detiene el contenedor
```

_Solo basta ejecutar desde nuestra terminal dentro de la carpeta del proyecto el siguiente comando:_

Crea y arranca el contenedor de docker

```sh
make run
```

### Paso 3: Usando solo node

Instala todas las dependencias

```sh
npm install
```

Levantar servidor de desarrollo

```sh
npm run dev
```

### Paso 4: Comprobar Instalación

_Para comprobar que la instalación se realizo de manera correcta ingresa al proyecto a través del siguiente enlace [http://localhost:3333/ping](http://localhost:3333/ping) y veras un mensaje de notificación._

## Configuración Debug ⚙️

### VSCode

Modifica el archivo Node Debug `launch.json`.

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "command": "npm run dev",
      "name": "Node debug",
      "request": "launch",
      "type": "node-terminal"
    }
  ]
}
```

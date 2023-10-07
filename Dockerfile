# Esta es la imagen base de la cual se va a partir
FROM python:3.7-alpine

# Variable de entorno recomendada por la imagen python:3.7
ENV PYTHONUNBUFFERED 1

# Crear directorio en el cual se va a trabajar
RUN mkdir /shopping_cart

# Establecer el directorio de trabajo
WORKDIR /shopping_cart

# Copiar el directorio actual al directorio de trabajo
COPY . .

# Copiar el requirements.txt al directorio raiz
COPY ./requirements.txt /requirements.txt

# Instalar los paquetes necesarios para el proyecto
RUN pip install -r /requirements.txt

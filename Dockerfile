FROM node:12
# copiar mi codigo en una carpeta, para eso creare una carpeta con el comando mkdir, -p creara todas las carpetas si no existen
RUN mkdir -p /usr/src/app
#esto me permite moverme a mi carpeta de trabajo.
WORKDIR /usr/src/app
#copiar el package dentro del directorio actual
COPY package*.json ./

RUN npm install
# copiar las carpetas actual dentro del directorio actual (menos la carpeta node_modules)
COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
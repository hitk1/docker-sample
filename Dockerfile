#Primeiro seta qual o tipo do serviço (imagem, recurso, etc;)
FROM node:alpine

#Esta linha diz que todos as demais ações, acontecerão dentro do diretório passado com parametros
#Cópia de arquivos, instalação de dependencias, etc;
WORKDIR /usr/app

#Copia o arquivo passado como primeiro parametro para o local passado como segundo parametro "package.json => ./ (/user/app)"
COPY package.json ./

#Execute um scrip de instalação das dependencias
RUN npm install

#Copia todos os arquivos do diretório atual (diretório onde estão alocados os arquivos da aplicação)
# Para o diretório dentro do container no docker (/user/app)
COPY . .

#execute o comando para expor a porta especificada no container
EXPOSE 3333

#Executa um comando via CMD (terminal), para executar a aplicação
CMD ["npm", "run", "dev"]
FROM node:18
WORKDIR /app
COPY . .
RUN npm install 
RUN npm run build-live 
EXPOSE 80
CMD ["node", "__sapper__/build"]

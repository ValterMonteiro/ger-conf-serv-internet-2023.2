###Comandos básicos do docker###
#Criar e executar um container Hello World
docker run hello-world #Cria e executa o container de forma persistente
docker run --rm hello-world #Cria e executa o container e remove o container após a execução

#Listar os containers
docker container list #Lista os containers em execução
docker ps -a #Lista todos os containers
docker ps #Lista os containers em execução

docker images #Lista as imagens

#Gerenciando containers
docker start <container_id ou container_name> #Inicia o container
docker stop <container_id ou container_name> #Para o container
docker restart <container_id ou container_name> #Reinicia o container
docker rm <container_id ou container_name> #Remove o container, para antes os containers em execução

#Comandos em lotes para genreciar containers a partir dos ids (Usar apenas em ambiente de teste)
docker stop $(docker ps -a -q) #Para todos os containers (funciona para start, stop, restart e rm)


#Zerar o docker
docker system prune --all -f

###Comandos container com execução constante###
docker run --name nginx1 -p 80:80 -d --rm nginx:1.25-alpine
docker run --name nginx2 -p 81:80 -d --rm nginx:1.25-alpine
docker run --name nginx3 -p 82:80 -d --rm nginx:1.25-alpine
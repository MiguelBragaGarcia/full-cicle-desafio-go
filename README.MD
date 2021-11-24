# Gerar a imagem
É necessário executar o seguinte comando.
<pre>
    docker build -t l0ordz/go . -f Dockerfile
</pre>
# Executar a imagem no docker hub
Precisamos baixar  e executar o projeto. Com o seguinte comando.
<pre>
    docker run --name container-go l0ordz/go
</pre>
# Gerar a imagem
## Pré-requisitos
Executar o seguinte comando para compilar o programa para linux que é o que está executando no container.

OBS: Para processadores não ARM utilizar o GOARCH=amd64.
<pre>
    env GOOS=linux GOARCH=arm go build -v ./index.go
</pre>

Executar o seguinte comando para criar a imagem docker.
<pre>
    docker build -t l0ordz/go:prod . -f Dockerfile.prod
</pre>

Executar o seguinde comando para criar um container com a imagem gerada.
<pre>
    docker run l0ordz/go:prod
</pre>

# Executar a imagem sem precisar buildar
Precisamos baixar  e executar o projeto. Com o seguinte comando.
<pre>
    docker run l0ordz/go:prod
</pre>
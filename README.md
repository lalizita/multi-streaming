# Servidor Multi Streaming

Um simples servidor para você fazer live e transmitir para mais de uma plataforma ao mesmo tempo ✨
__Esse projeto só funciona com ingests que utilizam o protocolo RTMP__

```
Esse projeto foi desenvolvido durante a gravação de um vídeo para o meu canal. Acesse o vídeo aqui:  
```

## Requisitos 
- Docker
- [OBS](https://obsproject.com/pt-br/download)
- Conta no ![Youtube](https://www.youtube.com/)
- Conta na ![Twitch](https://www.twitch.tv/)

## Tecnologias
- Docker compose
- NGINX

## Protocolos 
- RTMP (Real Time Message Protocol)

## Como executar
- Renomeie o arquivo `.env.example` para `.env`
- Vá ao seu canal do youtube e preencha as variáveis do arquivo `.env` com a URL e a Chave de transmissão
```
YOUTUBE_STREAMING_URL=rtmp://youtube.com/xxxxxx
YOUTUBE_STREAMING_KEY=1234567890abcdefg
```
- Vá ao seu canal da twitch e preencha `.env` com a Chave de transmissão e a ![URL de transmissão busque nesse endereço aqui](https://help.twitch.tv/s/twitch-ingest-recommendation?language=en_US)
```
TWITCH_STREAMING_URL=rtmp://sao03.contribute.live-video.net/app
TWITCH_STREAMING_KEY=1234567890abcdefg
```

Suba o container com a aplucação utilizando docker compose
```
docker-compose up --build
```

Abra o [OBS](https://obsproject.com/pt-br/download) > Configurações > Transmissão > Servidor
```
rtmp://localhost:1935/live
```
Clique em ok e depois clique em **Iniciar transmissão**

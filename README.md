# docker-ss
1. Rename _config.json to config.json.
2. Edit config.json, modify **"server_port"** and **"password"** field.
3. Run command:
```
>$ docker build -t ss:1.0 .
>$ docker run -p host_port:container_port -d ss:1.0
```

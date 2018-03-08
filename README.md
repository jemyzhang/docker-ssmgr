Docker file for [shadowsocks-manager](https://github.com/shadowsocks/shadowsocks-manager)
===

## Pull image

```
docker pull jemyzhang/docker-ssmgr
```

## Configure and run

```
docker run -d --restart always -v /path/to/.ssmgr:/root/.ssmgr --net=host jemyzhang/docker-ssmgr
```

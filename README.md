##### scrapydweb_deploy

* 结合Docker部署scrapydweb

### 一、下载安装

```shell
git clone https://github.com/guoxianru/scrapydweb_deploy.git
```


### 二、Docker

```shell
## Workdir scrapyd_deploy
docker build -t scrapydweb:latest .
docker run -d -p 5000:5000 scrapydweb
```
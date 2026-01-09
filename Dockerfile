FROM node:20-alpine3.20

WORKDIR /tmp

# 1. 复制所有文件，确保 index.html 也在其中
COPY . ./

# 2. 安装必要组件
RUN apk update && apk add --no-cache bash openssl curl && \
    chmod +x index.js && \
    npm install

# 3. 设置你的独有域名
ENV DOMAIN=dogmanwhat-2619face.hf.space

# 4. 启动程序
CMD ["node", "index.js"]

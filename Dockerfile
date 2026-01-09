FROM node:20-alpine3.20

WORKDIR /app

# 1. 复制所有文件，这会包含你新写的 index.html
COPY . .

# 2. 安装必要组件
RUN apk update && apk add --no-cache bash openssl curl && \
    npm install

# 3. 设置你的专属域名
ENV DOMAIN=dogmanwhat-2619face.hf.space

# 4. 启动程序
CMD ["node", "index.js"]

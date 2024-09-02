# 使用官方的 Node.js 基礎映像
FROM node:20-alpine

# 設定工作目錄
WORKDIR /usr/src/app

# 建立 package.json 並安裝 express
RUN npm init -y
RUN npm install express --save

# 複製應用程式的源代碼和靜態文件到容器中
COPY . .

# 暴露容器的 8081 埠口
EXPOSE 8080

# 運行應用程式
CMD [ "node", "server.js" ]


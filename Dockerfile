# 使用 Node 20 作为基础镜像
FROM node:20-alpine

# 设置工作目录
WORKDIR /app

# 复制整个项目到容器中
COPY . .

# 安装前端依赖并构建
RUN cd xiyuan_frontend && npm ci && npm run build-only

# 编译智能合约（hardhat.config.js 在 xiyuan_smart_contract 目录下）
RUN cd xiyuan_smart_contract && npm ci && npx hardhat compile

# 安装后端依赖
RUN cd xiyuan_backend && npm ci

# 暴露端口（Railway 会自动映射）
EXPOSE 3000

# 启动后端服务
CMD ["node", "xiyuan_backend/src/server.js"]
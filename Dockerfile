FROM node:20-alpine
WORKDIR /app
COPY . .
RUN cd xiyuan_frontend && npm ci && npm run build-only
RUN cd xiyuan_backend && npm ci
EXPOSE 3000
CMD ["node", "xiyuan_backend/src/server.js"]
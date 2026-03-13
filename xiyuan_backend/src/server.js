require('dotenv').config();
const mongoose = require('mongoose');

const app = require('./app');
const PORT = process.env.PORT || 3000;

// 连接 MongoDB
if (process.env.MONGODB_URI) {
  mongoose.connect(process.env.MONGODB_URI)
    .then(() => console.log('✅ MongoDB connected'))
    .catch(err => console.error('❌ MongoDB connection error:', err));
} else {
  console.warn('⚠️ MONGODB_URI not set, skipping MongoDB connection');
}

// 启动 HTTP 服务
app.listen(PORT, '0.0.0.0', () => {
  console.log(`🚀 服务器端口 ${PORT}`);
});
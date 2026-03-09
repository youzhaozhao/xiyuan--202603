# 26030914

---

## WSL Ubuntu 终端操作

**1.在第一个终端中部署合约**

```
cd ~/xiyuan-202603/xiyuan-202603/xiyuan_smart_contract

npx hardhat node
```
**2.保持前面所有终端打开，在第二个终端中启动 MongoDB 数据库**

```
sudo mongod --dbpath /var/lib/mongodb --bind_ip 127.0.0.1
```

**3.保持前面所有终端打开，在第三个终端中启动后端API服务**

```
cd ~/xiyuan-202603/xiyuan-202603/xiyuan_backend

npm start
```

**4.保持前面所有终端打开，在第四个终端中启动 IPFS 节点**

```
ipfs daemon
```

**5.保持前面所有终端打开，在第五个终端中启动前端**

```
cd ~/xiyuan-202603/xiyuan-202603/xiyuan_frontend

npm run dev
```

**7.保持前面所有终端打开，启动 BERT 语义查重服务**
```
cd ~/xiyuan-202603/xiyuan-202603/xiyuan_backend/bert_service
python -m venv venv # 第一次使用
source venv/bin/activate
pip install -r requirements.txt # 第一次使用
python bert_service.py
```

**6.保持前面所有终端打开，打开网页http://localhost:5173/**

连接钱包，开始确权，提交确权。
---

# 251021_22


## 读取链上存证记录

**1.先完成上述终端操作**

**2.在新终端中启动MongoDB Shell**
```
mongosh
```

**3.枚举全部数据库**
```
show dbs
```

**4.切换至目标数据库**
```
use xiyuan_blockchain
```

**5.列举当前库下的所有集合**
```
show collections
```

**6.查询并格式化输出集合全部文档**
```
db.researches.find().pretty()
```
**输出示例**
<img width="2513" height="417" alt="d7117442bc5fb7d3d534148a8c1fca1b" src="https://github.com/user-attachments/assets/150635b5-b4d1-4a66-8cb9-9e093beba0a8" />

---

## 下载上传的文件

例如上传一份文件后，显示
研究ID: research_1761118618717 IPFS哈希: QmWukxEvSz1BUmPyKiiUrjRrMFjpRq3Rzqd6zEv26EvuvR 交易哈希: 0xa5001c962e45aea1ba6d09a77e1118eddee896e94e94d86ed45b240420624620 下载: /ipfs/QmWukxEvSz1BUmPyKiiUrjRrMFjpRq3Rzqd6zEv26EvuvR

可以在浏览器打开完整URL： http://localhost:8080/ipfs/QmWukxEvSz1BUmPyKiiUrjRrMFjpRq3Rzqd6zEv26EvuvR 自动下载。

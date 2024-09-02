const express = require('express');
const path = require('path');

const app = express();
const port = 8080;

// 要提供作為根目錄的目錄路徑
const directoryToServe = path.join(__dirname, 'your-directory');

// 使用 express.static 提供靜態文件
app.use('/', express.static(directoryToServe));

// 啟動服務器
app.listen(port, () => {
  console.log(`Server is running and serving ${directoryToServe} at http://localhost:${port}`);
});


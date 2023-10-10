const { ipcRenderer } = require("electron");
ipcRenderer.send("load-page", "./reg.html");

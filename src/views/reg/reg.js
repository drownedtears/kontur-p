const { BrowserWindow, ipcRenderer } = require("electron");
const path = require("path");

const win = new BrowserWindow({ width: 800, height: 600 });
console.log(__dirname);
// win.loadFile(path.join(__dirname, "reg.html"));
ipcRenderer.send("load-page", "../reg.html");

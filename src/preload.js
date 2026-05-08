const { contextBridge, ipcRenderer } = require('electron');

// 暴露安全的 API 给渲染进程
contextBridge.exposeInMainWorld('electronAPI', {
    // 文件对话框
    showSaveDialog: (options) => ipcRenderer.invoke('show-save-dialog', options),
    showOpenDialog: (options) => ipcRenderer.invoke('show-open-dialog', options),
    
    // 应用路径
    getAppPath: () => ipcRenderer.invoke('get-app-path'),
    
    // 菜单事件监听
    onNewChat: (callback) => ipcRenderer.on('menu-new-chat', callback),
    onExport: (callback) => ipcRenderer.on('menu-export', callback),
    onSettings: (callback) => ipcRenderer.on('menu-settings', callback),
    
    // 移除监听
    removeAllListeners: (channel) => ipcRenderer.removeAllListeners(channel)
});

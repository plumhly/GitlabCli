# GitlabCli
gitlab操作shell


### 安装
运行目录下的`setup.sh`

### 配置
```
git config --add gitlab.url "https://gitlab.yourcompany.com"

// personal access token
git config --add gitlab.token "abcdefghijskl-1230" 
```
### 注意
该shell需要分支按照规定的格式: **parentBranchName_xx**，比如我需要在分支**dev**下创建新的分支，新的分支就是这样**dev_xx**(xx可以是除了下换线的字符)。
### 使用

**gl**: 拉去远端分支和父分支。
**gr**: 发送merge_request到父分支。
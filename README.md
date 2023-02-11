# Neovim IDE

This build of neovim is intended to give user a nice ide-like experience in their terminals.
Dashboard uses VSCode logo, but this config is not intended to be similar to this garbage.


![Screenshot](https://github.com/daniilty/vsnvim/blob/master/src/screenshot.png)

### Requirements:
  * [nvim](https://neovim.io/)
  * [gopls](https://pkg.go.dev/golang.org/x/tools/gopls#readme-installation)
  * [clangd](https://clangd.llvm.org/installation.html)
 
### Most important shortcuts:
  * Ctrl+t - toggle terminal
  * Ctrl+n - toggle file tree
  * ZZ - in case you don't know how to exit vim
  * Esc - to exit telescope
  * Ctrl+u - rename function/variable/class/etc... using lsp
  * Ctrl+p - view references
  * Ctrl+i - go to implementation
  * Ctrl+d - go to definition
  * Ctrl+D - go to declaration
  * K - hover using lsp

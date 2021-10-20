* Install WSL 2 (with separate linux kernel) from Microsoft Store
  * [Enable Nvidia GPU](https://docs.microsoft.com/en-us/windows/ai/directml/gpu-cuda-in-wsl) by referring to [Nvidia guide](https://docs.nvidia.com/cuda/wsl-user-guide/index.html)
  * Note [gaps between WSL 2 and native Linux if you use Cuda-based applications](https://developer.nvidia.com/blog/leveling-up-cuda-performance-on-wsl2-with-new-enhancements/)

* Install [VS-Code and WSL remote extension](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode) on the WSL distribtion.
* Install [Window Terminal](https://github.com/microsoft/terminal)
  * [Here](https://www.hanselman.com/blog/whats-the-difference-between-a-console-a-terminal-and-a-shell) is a good resource to distinguish the terminals from shells. 
  * (Optinal for terminal display) Install [Powerline for Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup)
    * add the following content into bash profile
      ```
         # customize prompt
         GOPATH=$HOME/go
         function _update_ps1() {
                     PS1="$($GOPATH/bin/powerline-go -error $?)"
             }
         if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
                     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
         fi
         source "$HOME/.cargo/env"
      ```

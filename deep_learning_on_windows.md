
  
* Install [VS-Code and WSL remote extension](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode) on the WSL distribtion.
* Install [Window Terminal](https://github.com/microsoft/terminal)
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
    
   Now, we can have the familiar **Bash Shell** (on an actual Linux kernel) and **VS-Code** for happy programming.

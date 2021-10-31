* Install WSL 2 (with separate linux kernel)
  * run `wsl --install -d Ubuntu-18.04` in PowerShell (Ubuntu-18.04 is my preferred Linux distribution)
  * Caveat: in my case, I have to restart my PC to launch the Ubuntu 
* Install [the CUDA driver by clicking this link](https://developer.nvidia.com/cuda/wsl) to enable Nvidia GPU for applications on both native Windows the Linux distribution
  * (Note) [gaps between WSL 2 and native Linux if you use Cuda-based applications](https://developer.nvidia.com/blog/leveling-up-cuda-performance-on-wsl2-with-new-enhancements/)
  * (Optional) change default user in WSL Ubuntu bash: `ubuntu config --default-user <username>`
* Install CUDA toolkits for creating CUDA applications (e.g., build deep learning models in PyTorch)
  ```
  $ wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
  $ sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
  
  # download the cuda toolkit installer
  # Note: 11.1 is just my preferred CUDA version
  $ wget https://developer.download.nvidia.com/compute/cuda/11.1.0/local_installers/cuda-repo-wsl-ubuntu-11-1-local_11.1.0-1_amd64.deb
  
  # install the public CUDA GPG key before setup CUDA toolke
  $ sudo apt-key add /var/cuda-repo-wsl-ubuntu-11-4-local/7fa2af80.pub
  
  # install cuda toolkit
  $ sudo dpkg -i cuda-repo-wsl-ubuntu-11-1-local_11.1.0-1_amd64.deb
  $ sudo apt-get update
  $ sudo apt-get -y install cuda
  ```
  
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

* Official Reference
  * [Windows: Enable Nvidia GPU](https://docs.microsoft.com/en-us/windows/ai/directml/gpu-cuda-in-wsl)
  * [Nvidia guide](https://docs.nvidia.com/cuda/wsl-user-guide/index.html)

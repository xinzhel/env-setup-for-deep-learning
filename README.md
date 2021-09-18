As a researcher working with scientific computing, I often programm on the linux environment and need to set up programming environments. In this repository, I record my workflow to setup my environment and some nitty-gritty material to help me understand how this workflow works and how to optimize my workflow to efficiently utilize the accessible resources, including
* Linux subsystem on my local Windows: WSL 2
* Azure VM: I normally use the script to set up Azure [DSVM](https://docs.microsoft.com/en-us/azure/machine-learning/data-science-virtual-machine/overview). [NC series VMs](https://azure.microsoft.com/en-au/pricing/details/virtual-machines/linux/) provide GPU (including Tesla K80, V100) for deep learning. [Here](https://github.com/xinzhel/machine_learning_on_linux/blob/master/AzureSpotDSVM.sh) is the script I use to perform automated creation and setup of the VM.
* GPU Cloud Server



# Git

* Installation
```
sudo apt install git -y
```

* auto-completion, prompt on bash
  * [The official tutorial](https://git-scm.com/book/uz/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash)
  * [the necessary files](https://github.com/git/git/tree/master/contrib/completion)
* ps: Basic Learning Materials
  * [Github](https://docs.github.com/en/get-started/quickstart)
  * [Udacity Course](https://classroom.udacity.com/courses/ud775)

  
# VSCode
VSCode could be conveniently used for code editing and debugging,mostly as the client interface, either for [Windows WSL 2](https://code.visualstudio.com/blogs/2019/09/03/wsl2) or for Azure VM or [Computing Instance](https://docs.microsoft.com/en-us/azure/machine-learning/how-to-set-up-vs-code-remote?tabs=extension) or [Compute Cluster](https://docs.microsoft.com/en-au/azure/machine-learning/tutorial-train-deploy-image-classification-model-vscode).


# Python Virtual Environment
[Hands-on Scripts](pyenv.sh)



# Terminals
[Here](https://www.hanselman.com/blog/whats-the-difference-between-a-console-a-terminal-and-a-shell) is a good resource to distinguish the terminals from shells.
* Gnome-terminal on Ubuntu 
* [Window Terminal](https://github.com/microsoft/terminal)
  *  [Powerline for Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup)
  








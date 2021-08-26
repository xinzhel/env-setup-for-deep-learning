# Program in my OS
## Apps
Zoom (login),
Wechat (login),
notion (login),
vscode

Windows app: onedrive, window terminals, WSL2

## Git 

This setting refers to  [this official tutorial](https://git-scm.com/book/uz/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash).

1. Auto-completion: Copy `[git-completion.bash](git)` somewhere handy, e.g. home directory;
   
2. customize command line prompt: copy `[git-prompt.sh](git)` to home directory
   Also add something like this to .bashrc
   
   ```
    . ~/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1
    export PS1='\w$(__git_ps1 " (%s)")\$ '
   ```

   
   



## Tensorflow GPU

```python
  import json
  from __future__ import absolute_import, division, print_function, unicode_literals
  
  import tensorflow as tf
  print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))
  
  
  def greet(name):
      return 'Hello, ' + name
```

  

## Python Virtual Environment

[Hands-on Scripts](pyenv.sh)



## Use R script in Jupyter. For using R in Jupyter:

1. `apt-get install r-base r-base-dev libssl-dev libcurl3-dev curl`
2. type the commands below in R prompt:
`install.packages(c('pbdZMQ', 'repr', 'devtools'))`
`devtools::install_github('IRkernel/IRkernel') `
`IRkernel::installspec()`


# Here is some useful scripts for how I build my PC environment on Window 10.


Python 3.7:
* [Basic Packages for Data Mining and Machine Learning](requirements.txt)
* Tensorflow 2
	+ [Test whether GPU works for Tensorflow](tf_gpu_test.py)

* virtualenv vs pyenv
	+ virtualenv in Window 10
	+ [pyenv in Ubuntu](install_pyenv.sh)


Use R script in Jupyter. For using R in Jupyter:
1. `apt-get install r-base r-base-dev libssl-dev libcurl3-dev curl`
2. type the commands below in R prompt:
`install.packages(c('pbdZMQ', 'repr', 'devtools'))`
`devtools::install_github('IRkernel/IRkernel') `
`IRkernel::installspec()`


Costomize my Git setting:
1. Auto-completion: get a copy of the contrib/completion/git-completion.bash file out of the Git source code. Copy it somewhere handy, like your home directory
`. ~/git-completion.bash`

2. customize my prompt: copy the contrib/completion/git-prompt.sh file from Git’s source repository to your home directory. [My setting](git_workspace\git-prompt.sh)
add something like this to your .bashrc:

`. ~/git-prompt.sh`
`export GIT_PS1_SHOWDIRTYSTATE=1`
`export PS1='\w$(__git_ps1 " (%s)")\$ '`

3. For activating the above files, add [this content](git_workspace\bash_profile_for_git.txt) to your .bashrc.

* to be able to execute a file
`chmod +x file_name`
* execute a file as a process in the background
`nohup /path/to/file_name &`
* check a process
`ps ax | grep ...`
* kill a process
`kill PID`
* kill a process by name
`pkill -f process_name`
* transfer files to remote vm: `scp -r /local/directory remote_username@10.10.0.2:/remote/directory`
* remove all *.pyc files and __pycache__ directories recursively in the current directory
  `find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf`

# Linux-Project
## The Linux kernel has logs for everything happens in the kernel space. These logs are stored and indexed by systemd logging unit (journald)

Write a shell script that gets executed every hour which reads the kernel log for the last hour and stores it in a text file,  then compress this file using bzip2 algorithm.
The file name format should be like this:
kernel-logs-YYYY-MM-DDTHH-MM.txt
Compressed file name format should be like this:
kernel-logs-YYYY-MM-DDTHH-MM.tar.bz2

Example: kernel-logs-2023-08-05T15-30.txt

Then upload the compressed file to a DropBox folder, and share the link. (You can use the dropbox cli to automate the process: https://github.com/dropbox/dbxcli. make sure you install it)

> Note: Use systemd timers to create the scheduled job, not crontab 

Deliverables:
- a public GitHub repository with two files: the shell script and the systemd timer file
- a link to the dropbox folder that contains the logs (make sure it can be publicly accessed)

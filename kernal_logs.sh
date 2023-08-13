#!/bin/bash

// Get the current date and time & a file name-logs
Current_Date=$(date "+%Y-%m-%dT%H-%M")
log_file="kernel-logs-$Current_Date.txt"

// Get the kernal logs for the last hour
journalctl --since "1 hour ago" --no-pager > "kernel-logs-$Current_Date.txt"

// Compress the log file 
tar -czvf "kernel-logs-$Current_Date.tar.gz" "kernel-logs-$Current_Date.txt"

// Upload the compressed log file to Dropbox
dbxcli put "kernel-logs-$Current_Date.tar.gz" "logs/kernel-logs-$Current_Date.tar.gz"

//This line removes the uncompressed log file 
rm"kernal.logs-$Current_Date.txt"

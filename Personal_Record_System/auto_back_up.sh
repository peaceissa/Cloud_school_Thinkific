#!/bin/bash
#set directory path where files are located
record_dir="~/Personal_Record_System"

#set backup directory
backup_dir="$record_dir/backups"

#set file for backup
backup_filename="backup_$(date +%Y-%m-%d).zip"

#create the backup using zip
zip -r "$backup_dir/$backup_filename" "$record_dir/credetials" "$record_dir/notes"

#print succes message
echo "Backup created successfully: $backup_dir/$bckup_filename"

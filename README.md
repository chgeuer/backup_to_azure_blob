# A small backup utility to backup content to an Azure blob


```bash
# run a backup
tar cvfz - . | ./streamazure.py -b "${HOSTNAME}_$(date '+%Y%m%d_%H%M%S').tar.gz" 

# list backups
./streamazure.py -l

# restore files
./streamazure.py -r erlang_20180706_150733.tar.gz | tar xvfz -
```

## Hello world

```bash
chgeuer@erlang:/mnt/c/github/chgeuer/backup_to_azure_blob$ echo "Hello World" | ./streamazure.py -b "1.txt"
Backup to https://erlang.blob.core.windows.net/backup/1.txt

chgeuer@erlang:/mnt/c/github/chgeuer/backup_to_azure_blob$ ./streamazure.py -l
1.txt

chgeuer@erlang:/mnt/c/github/chgeuer/backup_to_azure_blob$ ./streamazure.py -r 1.txt
Restore from https://erlang.blob.core.windows.net/backup/1.txt
Hello World

chgeuer@erlang:/mnt/c/github/chgeuer/backup_to_azure_blob$ ./streamazure.py -r 1.txt 2> /dev/null
Hello World

chgeuer@erlang:/mnt/c/github/chgeuer/backup_to_azure_blob$
```


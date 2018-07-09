# A small backup utility to backup content to an Azure blob


```bash
# run a backup
tar cvfz - . | ./streamazure.py -b "${HOSTNAME}_$(date '+%Y%m%d_%H%M%S').tar.gz" 

# list backups
./streamazure.py -l

# restore files
./streamazure.py -r erlang_20180706_150733.tar.gz | tar xvfz -
```


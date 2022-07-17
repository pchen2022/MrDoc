#! /bin/bash
set -e
nohup /home/sniper/.conda/envs/mrdoc_env/bin/python /opt/apps/MrDoc/manage.py runserver 0.0.0.0:10086 > /dev/null 2>&1 &
exit 0

find /var/log/ -mtime +30 -exec rm -rf {] \;:
  cron.present:
    - user: root
    - minute: '*/5'
    - hour: '*'
    - daymonth: '*'
    - month: '*'
    - dayweek: '*'

include: 
  - apache
apache_service:
  service:
    - name: httpd
    - running
    - enable: True
    - watch: 
      - file: apache_main_conf
      - file: apache_virtual_host
      - file: apache_web_page


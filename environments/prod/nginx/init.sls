nginx_pkg:
  pkg.installed:
    - name: nginx
    - require:  
      - http_pkg

http_pkg:
  pkg.purged:
    - name: httpd

nginx_srv:
  service:
    - name: nginx
    - running
    - enable: true

include:
  - apache.install
  - apache.service
apache_main_conf:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - mode: 644
    - owner: root
    - group: root
    - require:
      - pkg: apache_package

apache_virtual_host:
  file.managed:
    - name: /etc/httpd/conf.d/mydomain.conf
    - mode: 644
    - owner: root
    - group: root
    - source: salt://apache/files/vhost.conf
    - template: jinja
    - context:
      fqdn: {{ grains['fqdn'] }}
    - require:
      - pkg:  apache_package

apache_web_root:
  file.directory:
    - name: /var/www/mydomain
    - mode: 0755
    - owner: root
    - group: root

apache_web_page:
  file.managed:
    - name: /var/www/mydomain/index.html
    - mode: 644
    - owner: root
    - group: root
    - source: salt://apache/files/index.html
    - require:
      - file: apache_web_root
    - template: jinja
    - context:
      fqdn: {{ grains['fqdn'] }}
      ip_address: {{ grains['ip_interfaces']['ens33'][0] }}

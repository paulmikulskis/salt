install_apache:
  pkg.installed:
    - pkgs:
      - httpd

index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: apache
    - group: apache
    - mode: 644
    - source: salt://apache/templates/index.html


httpd:
  service.running:
    - enable: True

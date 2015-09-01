# vim: sts=2 ts=2 sw=2 et ai
{% from "tftp/map.jinja" import tftp with context %}

tftp__pkg:
  pkg.installed:
    - name: tftp
    - pkgs: {{tftp.packages}}

tftp__service:
  service.{{tftp.servicestate}}
    - name: {{tftp.service}}
{% if tftp.serviceenabled == True %}
    - enable: True
{% endif %}
    - require:
      - pkg: tftp

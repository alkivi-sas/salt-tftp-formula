# vim: sts=2 ts=2 sw=2 et ai
{% from "tftp/map.jinja" import tftp with context %}

tftp:
  pkg.installed:
    - name: tftp
    - pkgs: {{tftp.packages}}
  service.{{tftp.servicestate}}:
    - name: {{tftp.service}}
    - require:
      - pkg: tftp

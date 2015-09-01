# vim: sts=2 ts=2 sw=2 et ai
{% from "tftp/map.jinja" import tftp with context %}

tftp__pkg:
  pkg.installed:
    - name: tftp
    - pkgs: {{tftp.packages}}


#tftp__file_/etc/xinetd.d/tftp:
#  augeas.change:
#    - name: /etc/xinetd.d/tftp
#    - context: /files/etc/xinetd.d/tftp
#    - changes:
#      - set service/disable no

#xinetd:
#  pkg.installed: []
#  service.running:
#    - require:
#      - pkg: tftp

tftp__service:
  service.{{tftp.servicestate}}
    - name: {{tftp.service}}
    - enable: {{tftp.serviceenabled}}
    - require:
      - pkg: tftp

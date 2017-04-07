{% from "tftp/map.jinja" import tftp with context %}
{% from "tftp/map.jinja" import config with context %}

include:
  - tftp

tftp_default:
  file.managed:
    - name: {{ tftp.default }}
    - user: root
    - group: root
    - mode: 644
    - source: salt://tftp/templates/default.jinja
    - template: jinja
    - require:
      - pkg: tftp
    - watch_in:
      - service: {{ tftp.service }}

tftp_root_dir:
  file.directory:
    - name: {{ tftp.filespath }}
    - user: {{ tftp.user }}
    - group: {{ tftp.group }}
    - dir_mode: 755
    - file_mode: 644
    - require:
      - pkg: tftp
    - recurse:
      - user
      - group
      - mode

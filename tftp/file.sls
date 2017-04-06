{% from "tftp/map.jinja" import tftp with context %}

tftp_file__files_recurse:
  file.recurse:
    - name: {{tftp.filespath}}
    - clean: False
    - user: root
    - dir_mode: 0775
    - file_mode: '0644'
    - template: jinja
    - source: salt://tftp/files/recurse

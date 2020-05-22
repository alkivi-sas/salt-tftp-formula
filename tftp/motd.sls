{% from "motd/macros.sls" import motd_role with context %}

include:
  - motd

{{ motd_role('tftpd-hpa', 'TFTP Server') }}

/etc/motd.d/tftp:
  file.absent


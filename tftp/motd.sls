{% from "motd/macros.sls" import motd_role with context %}

include:
  - motd

{{ motd_role('tftp', 'TFTP Server') }}


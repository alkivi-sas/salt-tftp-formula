tftp.firewall:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match:
      - comment
    - comment: 'tftp'
    - dport: 69
    - proto: udp
    - save: True

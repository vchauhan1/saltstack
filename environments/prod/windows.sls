#To enable the windows firewall. 
enable_all:
  win_firewall.enabled:
    - name: allprofiles

open_smb_port:
  win_firewall.add_rule:
    - name: SMB (445)
    - localport: 445
    - protocol: tcp
    - action: allow

# To disable the domain profile in firewall. 
disable_domain:
  win_firewall.disabled:
    - name: domainprofile

# install telnet client
install_telnet_client:
  dism.feature_installed:
    - name: TelnetClient

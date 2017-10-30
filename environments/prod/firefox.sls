firefox:
  'pkg.install':
    - full_name: 'Mozilla Firefox 55.0.1 (x86 en-US)'
    #- installer: 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/55.0.1/win32/en-US/Firefox%20Setup%2055.0.1.exe'
    - installer: 'firefox.exe'
    - install_flags: '/s'
    - uninstaller: '%ProgramFiles(x86)%\Mozilla Firefox\uninstall\helper.exe'
    - uninstall_flags: '/S'
    - msiexec: False
    - locale: en_US
    - reboot: False

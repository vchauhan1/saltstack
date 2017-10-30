remove_marker:
  local.cmd.run:
    - tgt: '*'
    - arg:
      - 'rm -rf /tmp/marker'

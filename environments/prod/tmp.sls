revert_tmp_file:
  local.state.apply:
    - tgt: '*'
    - env: prod
    - arg:
      - services

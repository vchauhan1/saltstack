generic_user:
  user.present:
    - name: {{ pillar['prod_user']['name'] }}
    - shell: /bin/bash
    - home: /home/{{pillar['prod_user']['name'] }}
    - uid: {{ pillar['prod_user']['uid'] }}
    - password: {{ pillar['prod_user']['password'] }}

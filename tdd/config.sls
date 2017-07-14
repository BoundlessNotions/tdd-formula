{% from "tdd/map.jinja" import tdd with context %}

include:
  - .install
  - .service

tdd-config:
  file.managed:
    - name: {{ tdd.conf_file }}
    - source: salt://tdd/templates/conf.jinja
    - template: jinja
    - watch_in:
      - service: tdd_service_running
    - require:
      - pkg: tdd

{% from "tdd/map.jinja" import tdd with context %}

include:
  - .service

tdd:
  pkg.installed:
    - pkgs: {{ tdd.pkgs }}
    - require_in:
        - service: tdd_service_running

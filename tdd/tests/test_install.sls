{% from "tdd/map.jinja" import tdd with context %}

{% for pkg in tdd.pkgs %}
test_{{pkg}}_is_installed:
  testinfra.package:
    - name: {{ pkg }}
    - is_installed: True
{% endfor %}

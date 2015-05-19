---
specversion: {{ specversion }}
id: {{ name }}-app

metadata:
  name: {{ name }}
  appversion: {{ version }}
  description: {{ description }}
  {% if license %}
  license:
    name: {{ license }}
  {% endif %}
  authors: [ "{% if author %}{{ author }} {% endif %}{% if email %}<{{ email }}>{% endif %}" ]
  homepage: 

graph:
  - name: {{ name }}
    {% if kubernetes %}
    artifacts:
      kubernetes:
        - file://artifacts/kubernetes/{{ name }}-pod.yaml
        - file://artifacts/kubernetes/{{ name }}-service.yaml
    {% endif %}


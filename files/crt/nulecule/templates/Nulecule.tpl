---
specversion: {{ specversion }}
id: {{ name }}-app

metadata:
    name: {{ name }}
    appversion: {{ version }}
    description: {{ description }}
    authors: [ "{{ author }} <{{ email }}>" ]
    homepage: 

graph:
    - name: {{ name }}
      artifacts:
          {% if kubernetes %}
          kubernetes:
              - file://artifacts/kubernetes/{{ name }}-pod.yaml
              - file://artifacts/kubernetes/{{ name }}-service.yaml
          {% endif %}


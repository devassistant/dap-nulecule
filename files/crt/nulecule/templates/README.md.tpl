# {{ name }}

{% if description %}{{ description }}{% endif %}

This is an Atomic Application based on the Nulecule specification
([https://github.com/projectatomic/nulecule](https://github.com/projectatomic/nulecule)).

{% if author and email %}
Copyright {{ year }} {{ author }} <{{ email }}>. {% endif %}{% if license %}Released under the {{ license }}.{% endif %}

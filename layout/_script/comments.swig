{% if !is_home() and !is_archive() and (page.comments != false) %}
  {% include "_comments/disqus.swig" %}
  {% include "_comments/livere.swig" %}
{% endif %}

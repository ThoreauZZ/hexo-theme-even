{% if !is_home() and !is_archive() and (page.comments != false) %}
  {% include "_comments/disqus.swig" %}
  {% include "_comments/livere.swig" %}
  {% include "_comments/gitment.swig" %}
  {% include "_comments/gitalk.swig" %}
{% endif %}

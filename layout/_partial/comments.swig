{% if page.comments and not is_home() %}
  <div class="comments" id="comments">
    {% if theme.disqus_shortname %}
      <div id="disqus_thread">
        <noscript>
          Please enable JavaScript to view the
          <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a>
        </noscript>
      </div>

    {% elseif theme.livere_uid %}
        <div id="lv-container" data-id="city" data-uid="{{ theme.livere_uid }}"></div>
    
    {% elseif theme.gitalk.enable %}
        <div id="gitalk-container"></div>

    {% elseif theme.gitment.enable %}
        {% if theme.gitment.lazy %}
            <div onclick="showGitment()" id="gitment-display-button">{{ __('gitmentbutton') }}</div>
            <div id="gitment-container" style="display:none"></div>
        {% else %}
            <div id="gitment-container"></div>
        {% endif %}
    {% endif %}
  </div>
{% endif %}

{% assign release = include.release %}
<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
    </tr>
    {% for type in site.data.download_types %}
      {% if release.type == "stable" and type.download_platform == "podified" %}
        {% continue %}
      {% endif %}
      {% assign data = type.download_platform | data_for: release.branch, release.tag, release.filename, type.ext %}
      {% assign url = data[0] %}
      {% assign file_size = data[1] %}
      <tr>
        <td><a href="{{ url }}" onClick="{{ type.download_platform | on_click_for_download: type.name, release.name }}">{{ type.name }}</a></td>
        <td>{{ type.download_platform }}</td>
        <td>{{ file_size }}</td>
      </tr>
    {% endfor %}
  </table>
</div>

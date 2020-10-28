{% assign release = include.release %}
<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
      <th>MD5</th>
    </tr>
    {% for type in site.data.download_types %}
      {% assign data = type.download_platform | data_for: release.branch, release.tag, release.filename, type.ext %}
      {% assign url = data[0] %}
      {% assign file_size = data[1]["size"] %}
      {% assign md5 = data[1]["md5"] %}
      <tr>
        <td><a href="{{ url }}" onClick="{{ type.download_platform | on_click_for_download: type.name, release.name }}">{{ type.name }}</a></td>
        <td>{{ type.download_platform }}</td>
        <td>{{ file_size }}</td>
        <td>{{ md5 }}</td>
      </tr>
    {% endfor %}
  </table>
</div>

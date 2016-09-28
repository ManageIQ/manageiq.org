---
layout: page
title: Download
---

## Download ManageIQ

### Current stable release (Darga-3)

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
    </tr>
    <tr>
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/">Docker (tag darga-3)</a></td>
      <td>docker</td>
      <td>0.5 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      <td><a href="http://manageiq.org/download/manageiq-{{type.download_platform}}-darga-3.{{type.ext}}">{{ type.name }}</a></td>
      <td>{{ type.download_platform }}</td>
      <td>{{ type.size_stable }}</td>
    </tr>
    {% endfor %}
  </table>
</div>

### Previous stable release (Darga-2)

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
    </tr>
    <tr>
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/">Docker (tag darga-2)</a></td>
      <td>docker</td>
      <td>0.6 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      <td><a href="http://manageiq.org/download/manageiq-{{type.download_platform}}-darga-2.{{type.ext}}">{{ type.name }}</a></td>
      <td>{{ type.download_platform }}</td>
      <td>{{ type.size_prev }}</td>
    </tr>
    {% endfor %}
  </table>
</div>

### Nightlies (developers only)

**Warning:** things may be unstable, stuff may break. If you're looking for adventure, please proceed.

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
    </tr>
    <tr>
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/">Docker (tag latest)</a></td>
      <td>docker</td>
      <td>0.4 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      <td><a href="http://manageiq.org/download/manageiq-{{type.download_platform}}-devel.{{type.ext}}">{{ type.name }}</a></td>
      <td>{{ type.download_platform }}</td>
      <td>{{ type.size_devel }}</td>
    </tr>
    {% endfor %}
    <tr>
      <td><a href="https://atlas.hashicorp.com/vagrant">Vagrant</a></td>
      <td>vagrant</td>
      <td>1.1 GB</td>
    </tr>
  </table>
</div>

## What's next?

Take a look at our [Quick Start Guide](/docs/get-started/) for an overview of ManageIQ concepts to get you up and running quickly. You can easily get started with:

- [Docker](/docs/get-started/docker)
- [Vagrant](/docs/get-started/vagrant)

To go more in-depth, check out the [User Reference](/docs/reference/).

Bookmark the [documentation page](/docs/) to access the above docs and more at your convenience.

Don't forget to join the [ManageIQ community](/community/) for various ways to communicate, contribute, and get support!

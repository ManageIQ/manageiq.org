---
layout: page
title: Download
---

## Download ManageIQ

{% assign release = site.data.releases["stable"] %}

### Current stable release ({{ release.name }})

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
    </tr>
    <tr>
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/">Docker (tag {{release.tag}})</a></td>
      <td>docker</td>
      <td>0.5 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      <td><a href="http://releases.manageiq.org/manageiq-{{type.download_platform}}-{{release.filename}}.{{type.ext}}">{{ type.name }}</a></td>
      <td>{{ type.download_platform }}</td>
      <td>{{ type.size_stable }}</td>
    </tr>
    {% endfor %}
  </table>
</div>

{% assign release = site.data.releases["devel"] %}

### {{ release.name }} (developers only)

**Warning:** things may be unstable, stuff may break. If you're looking for adventure, please proceed.

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
    </tr>
    <tr>
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/">Docker (tag {{release.tag}})</a></td>
      <td>docker</td>
      <td>0.4 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      <td><a href="http://releases.manageiq.org/manageiq-{{type.download_platform}}-{{release.filename}}.{{type.ext}}">{{ type.name }}</a></td>
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

If you don't find what you want in the above lists, try searching from the available images at [releases.manageiq.org][].

## What's next?

Take a look at our [Quick Start Guide][] for an overview of ManageIQ concepts to get you up and running quickly. You can easily get started with:

- [Docker][]
- [Vagrant][]

To go more in-depth, check out the [User Reference][].

Bookmark the [documentation page][] to access the above docs and more at your convenience.

Don't forget to join the [ManageIQ community][] for various ways to communicate, contribute, and get support!

[releases.manageiq.org]: http://releases.manageiq.org/
[Quick Start Guide]:     /docs/get-started/
[Docker]:                /docs/get-started/docker
[Vagrant]:               /docs/get-started/vagrant
[User Reference]:        /docs/reference/
[documentation page]:    /docs/
[ManageIQ community]:    /community/

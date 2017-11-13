---
layout: page
title: Download ManageIQ
---

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
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: 'Docker {{release.name}}', transport: 'beacon' });">Docker (tag {{release.tag}})</a></td>
      <td>docker</td>
      <td>0.8 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      {% if type.download_platform == 'gce' %}
      <td><a href="https://console.cloud.google.com/storage/browser/manageiq/" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: '{{type.name}} {{release.name}}', transport: 'beacon' });">{{ type.name }}</a></td>
      {% else %}
      <td><a href="http://releases.manageiq.org/manageiq-{{type.download_platform}}-{{release.filename}}.{{type.ext}}" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'download', eventLabel: '{{type.name}} {{release.name}}', transport: 'beacon' });">{{ type.name }}</a></td>
      {% endif %}
      <td>{{ type.download_platform }}</td>
      <td>{{ type.size_stable }}</td>
    </tr>
    {% endfor %}
    <tr>
      <td><a href="https://atlas.hashicorp.com/manageiq/boxes/fine" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: 'Vagrant {{release.name}}', transport: 'beacon' });">Vagrant</a></td>
      <td>vagrant</td>
      <td>1.3 GB</td>
    </tr>
  </table>
</div>



{% assign release = site.data.releases["prerelease"] %}

{% if release %}

### Pre-release ({{ release.name }})

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <tr>
      <th>Appliance</th>
      <th>Format</th>
      <th>Size</th>
    </tr>
    <tr>
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: 'Docker {{release.name}}', transport: 'beacon' });">Docker (tag {{release.tag}})</a></td>
      <td>docker</td>
      <td>0.7 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      {% if type.download_platform == 'gce' %}
      <td><a href="https://console.cloud.google.com/storage/browser/manageiq/" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: '{{type.name}} {{release.name}}', transport: 'beacon' });">{{ type.name }}</a></td>
      {% else %}
      <td><a href="http://releases.manageiq.org/manageiq-{{type.download_platform}}-{{release.filename}}.{{type.ext}}" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'download', eventLabel: '{{type.name}} {{release.name}}', transport: 'beacon' });">{{ type.name }}</a></td>
      {% endif %}
      <td>{{ type.download_platform }}</td>
      <td>{{ type.size_pre }}</td>
    </tr>
    {% endfor %}
    <tr>
      <td><a href="https://atlas.hashicorp.com/manageiq/boxes/fine" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: 'Vagrant {{release.name}}', transport: 'beacon' });">Vagrant</a></td>
      <td>vagrant</td>
      <td>1.1 GB</td>
    </tr>
  </table>
</div>

{% endif %}

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
      <td><a href="https://hub.docker.com/r/manageiq/manageiq/" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'outbound', eventLabel: 'Docker {{release.name}}', transport: 'beacon' });">Docker (tag {{release.tag}})</a></td>
      <td>docker</td>
      <td>0.8 GB</td>
    </tr>
    {% for type in site.data.download_types %}
    <tr>
      <td><a href="http://releases.manageiq.org/manageiq-{{type.download_platform}}-{{release.filename}}.{{type.ext}}" onClick="ga('send', 'event', { eventCategory: 'Appliance', eventAction: 'download', eventLabel: '{{type.name}} {{release.name}}', transport: 'beacon' });">{{ type.name }}</a></td>
      <td>{{ type.download_platform }}</td>
      <td>{{ type.size_devel }}</td>
    </tr>
    {% endfor %}
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

## Export Regulations

By downloading ManageIQ software, you acknowledge that you understand all of the following: ManageIQ software and technical information may be subject to the U.S. Export Administration Regulations (the “EAR”) and other U.S. and foreign laws and may not be exported, re-exported or transferred (a) to any country listed in Country Group E:1 in Supplement No. 1 to part 740 of the EAR (currently, Cuba, Iran, North Korea, Sudan & Syria); (b) to any prohibited destination or to any end user who has been prohibited from participating in U.S. export transactions by any federal agency of the U.S. government; or (c) for use in connection with the design, development or production of nuclear, chemical or biological weapons, or rocket systems, space launch vehicles, or sounding rockets, or unmanned air vehicle systems. You may not download ManageIQ software or technical information if you are located in one of these countries or otherwise subject to these restrictions. You may not provide ManageIQ software or technical information to individuals or entities located in one of these countries or otherwise subject to these restrictions. You are also responsible for compliance with foreign law requirements applicable to the import, export and use of ManageIQ software and technical information.

[releases.manageiq.org]: http://releases.manageiq.org/
[Quick Start Guide]:     /docs/get-started/
[Docker]:                /docs/get-started/docker
[Vagrant]:               /docs/get-started/vagrant
[User Reference]:        /docs/reference/
[documentation page]:    /docs/
[ManageIQ community]:    /community/

---
layout: default
---

<div id="home">
  <div class="container">
    <h1>Discover, Optimize, And Control Your Hybrid IT</h1>
    <h2>
      Manage containers, virtual machines, networks,
      and storage from a single platform
    </h2>
  </div>
  <div class="jumbotron">
    <div class="container">
      <h3>Try the Darga release in 30 minutes</h3>
      <div class="provider-group">
        <div class="row">
          <div class="col-md-4">
            {% include provider_lg.html title="Kubernetes" %}
          </div>
          <div class="col-md-4">
            {% include provider_lg.html title="VMWare" %}
          </div>
          <div class="col-md-4">
            {% include provider_lg.html title="OpenStack" %}
          </div>
        </div>
      </div>

      <div class="provider-group">
        <div class="row">
          <div class="col-md-2 col-md-offset-1">
            {% include provider.html title="oVirt" %}
          </div>
          <div class="col-md-2">
            {% include provider.html title="Red Hat" %}
          </div>
          <div class="col-md-2">
            {% include provider.html title="Microsoft Azure" %}
          </div>
          <div class="col-md-2">
            {% include provider.html title="KVM" %}
          </div>
          <div class="col-md-2">
            {% include provider.html title="SCVMM" %}
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <h2>
      ManageIQ is the open source manager of managers
      that discovers your environment: containers,
      virtual machines, networks, storage volumes, and more.
    </h2>

    <div class="features">
      {% for i in (1..3) %}
        {% include feature.html %}
      {% endfor %}
    </div>
  </div>
</div>

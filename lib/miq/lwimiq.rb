module Miq
  class Lwimiq
    def self.generate(options)
      start_date = if options[:current]
                     Date.today - Date.today.wday + 1
                   else
                     Date.today - Date.today.wday - 6
                   end
      end_date = start_date + 6
      new(start_date, end_date).generate
    end

    attr_reader :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date
    end

    def generate
      File.open(path, "w") { |f| f.write(content) }
      system "#{ENV['EDITOR'] || 'open'} #{path}"
    end

    def path
      File.join("site", "_posts", "#{Date.today.strftime("%Y-%m-%d")}-CHANGE-ME.md")
    end

    def content
      <<-EOF
---
title: "Last Week in ManageIQ: <subtitle>"
author: <author>
date: #{publication_date}
comments: true
published: true
tags: LWIMIQ
---

<intro>

## Featured

<prs merged>
<important news>

## Improved

### <pr 1>
### <pr 2>

## Fixed

### <pr 1>
### <pr 2>

## New

### <pr 1>
### <pr 2>

## Deleted

### <pr 1>
### <pr 2>

## Wrapping up

<outro>

[manageiq PRs merged]: #{uri_for("manageiq")}
[manageiq-ui-classic PRs merged]: #{uri_for("manageiq-ui-classic")}
[manageiq-ui-service PRs merged]: #{uri_for("manageiq-ui-service")}
[manageiq-providers-amazon PRs merged]: #{uri_for("manageiq-providers-amazon")}
[manageiq-providers-ansible_tower PRs merged]: #{uri_for("manageiq-providers-ansible_tower")}
[manageiq-providers-foreman PRs merged]: #{uri_for("manageiq-providers-foreman")}
[manageiq-providers-google PRs merged]: #{uri_for("manageiq-providers-google")}
[manageiq-providers-hawkular PRs merged]: #{uri_for("manageiq-providers-hawkular")}
[manageiq-providers-lenovo PRs merged]: #{uri_for("manageiq-providers-lenovo")}
[manageiq-providers-kubernetes PRs merged]: #{uri_for("manageiq-providers-kubernetes")}
[manageiq-providers-nuage PRs merged]: #{uri_for("manageiq-providers-nuage")}
[manageiq-providers-openshift PRs merged]: #{uri_for("manageiq-providers-openshift")}
[manageiq-providers-openstack PRs merged]: #{uri_for("manageiq-providers-openstack")}
[manageiq-providers-ovirt PRs merged]: #{uri_for("manageiq-providers-ovirt")}
[manageiq-providers-scvmm PRs merged]: #{uri_for("manageiq-providers-scvmm")}
[manageiq-providers-vmware PRs merged]: #{uri_for("manageiq-providers-vmware")}
EOF
    end

    def publication_date
      Date.today.upto(Date.today + 6).detect(&:tuesday?)
    end

    def uri_for(repo)
      URI::HTTPS.build(
        :host  => "github.com",
        :path  => "/ManageIQ/#{repo}/pulls",
        :query => [
          "page=1",
          [
            "q=is%3Apr",
            "is%3Amerged",
            "base%3Amaster",
            "merged%3A%22#{start_date.strftime("%Y-%m-%d")}+..+#{end_date.strftime("%Y-%m-%d")}%22",
            "sort%3Acreated-desc",
          ].join("+"),
          "utf8=%E2%9C%93"
        ].join("&")
      )
    end
  end
end

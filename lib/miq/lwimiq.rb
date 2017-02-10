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
date: #{DateTime.now.strftime("%Y-%m-%d %H:%M:%S %Z")}
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
[manageiq-providers-azure PRs merged]: #{uri_for("manageiq-providers-azure")}
[manageiq-providers-vmware PRs merged]: #{uri_for("manageiq-providers-vmware")}
EOF
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

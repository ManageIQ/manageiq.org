module Miq
  class Lwimiq
    def self.generate(options)
      start_date = if options[:current]
                     Date.today - Date.today.wday + 1
                   else
                     Date.today - Date.today.wday - 6
                   end
      end_date = start_date + 6
      author = options[:author]
      subtitle = options[:subtitle]
      new(start_date, end_date, author, subtitle).generate
    end

    attr_reader :start_date, :end_date, :author, :subtitle

    def initialize(start_date, end_date, author, subtitle)
      @start_date = start_date
      @end_date = end_date
      @author = author
      @subtitle = subtitle
    end

    def generate
      File.open(path, "w") { |f| f.write(content) }
      system "#{ENV['EDITOR'] || 'open'} #{path}"
    end

    def path
      File.join("site", "_posts", "#{Date.today.strftime("%Y-%m-%d")}-#{file_rename}.md")
    end


    def content
      <<-EOF
---
title: "Last Week in ManageIQ: #{@subtitle}"
author: #{@author}
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
[manageiq-providers-azure PRs merged]: #{uri_for("manageiq-providers-azure")}
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

    def file_rename
      @subtitle == '<subtitle>' ? 'CHANGE-ME' : cleanup
    end

    def cleanup
      @subtitle.gsub(/[^0-9a-z]/i, '-')
    end
  end
end

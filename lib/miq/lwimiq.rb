module Miq
  class Lwimiq
    def self.generate(start_date)
      new(start_date).generate
    end

    attr_reader :start_date, :end_date

    def initialize(start_date)
      @start_date = Date.parse(start_date)
      @end_date = @start_date + 6
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

[PRs merged last week]: https://github.com/ManageIQ/manageiq/pulls?page=1&q=is%3Apr+is%3Amerged+base%3Amaster+merged%3A%22#{start_date.strftime("%Y-%m-%d")}+..+#{end_date.strftime("%Y-%m-%d")}%22+sort%3Acreated-desc&utf8=%E2%9C%93
[Commits merged last week]: https://github.com/manageiq/manageiq/compare/master@%7B#{start_date.strftime("%Y-%m-%d")}%7D...@%7B#{end_date.strftime("%Y-%m-%d")}%7D
EOF
    end
  end
end

#!/usr/bin/env ruby

base_dir = ARGV[0] || File.expand_path("../../site/docs/guides", __FILE__)

Dir["#{base_dir}/**/*.md"].each do |path|
  content = File.readlines(path)

  File.open(path, "w") do |f|
    f.puts "---\n---\n"
    content.each {|line| f.puts line }
  end
end

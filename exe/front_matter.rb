#!/usr/bin/env ruby

base_dir = ARGV[0] || File.expand_path("../../site/docs/guides", __FILE__)

# puts base_dir

# find md files
md_paths = Dir["#{base_dir}/**/*.md"]

# puts md_paths

# read content
# prepend "---\n---"
# write file

md_paths.each do |path|
  content = File.readlines(path)

  File.open(path, "w") do |f|
    f.puts "---\n---\n"
    content.each {|line| f.puts line }
  end
end

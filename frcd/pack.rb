#!/usr/bin/env ruby

# Create tarball for upload to public server

system(%q{ find . -name ".DS_Store" -exec rm  {} \; })
cur_date = %x{ date +"%Y-%m-%d" }.chomp
tarball = "FctReactClientDeploy.#{cur_date}.taz"

exclude_items = [
  "*.swp",
  "node_modules"
]

exclude_items.collect!{ |x| "--exclude=#{x}" }
exclude = ""
exclude += exclude_items.join(" ")
puts "Creating tarball ../#{tarball}"
Dir.chdir('..') do
  system(%Q{ tar cvfz #{tarball} #{exclude} frcd })
end
puts "Created tarball ../#{tarball}"

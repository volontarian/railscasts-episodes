#!/usr/bin/env ruby
require 'rubygems'
require 'octokit'

page = 1

catch(:done) do
  while (repositories = Octokit.repositories('railscasts', page: page, per_page: 100, sort: 'created', direction: 'desc')).length > 0
    repositories.each do |repository|
      path = "repositories/#{repository.name}"
      
      throw :done if File.exist? path
      
      system "git clone git://github.com/railscasts/#{repository.name} #{path}"
    end
    
    page += 1
  end
end

puts "Done."
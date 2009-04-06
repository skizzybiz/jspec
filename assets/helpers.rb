
require 'rubygems'
require 'lightr'

def highlight string
  Lightr::JavaScript.parse(string).to_s
end

def example file
  File.read File.dirname(__FILE__) + '/examples/' + file
end

def title title, subheading
  %(<h1>#{title} <em>#{subheading}</em></h1>)
end

def project_url username, project
  "http://github.com/#{username}/#{project}"
end

PROJECT_URL = project_url('visionmedia', 'jspec')

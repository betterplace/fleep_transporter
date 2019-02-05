# -*- encoding: utf-8 -*-
# stub: fleep_transporter 0.0.1 ruby lib

require 'rake'

Gem::Specification.new do |s|
  s.name = 'fleep_transporter'
  s.version = '0.0.1'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.require_paths = ['lib']
  s.authors = ['betterplace Developers']
  s.date = '2019-01-24'
  s.description = 'Convert Fleep JSON history into a Slack-importabl CSV file'
  s.email = 'developers@betterplace.org'
  s.executables = [
    'fleep_transporter'
  ]
  s.extra_rdoc_files = [
    'README.md',
  ]
  s.files = FileList['lib/**/*.rb', 'bin/*', 'LICENSE', 'Rakefile', 'Gemfile', 'VERSION', 'README.md'].to_a
  s.homepage = 'http://github.com/betterplace/fleep_transporter'
  s.rdoc_options = ['--title', 'FleepTransporter', '--main', 'README.md']
  s.rubygems_version = '3.0.1'
  s.summary = 'Transport Fleep to Slack'
  s.specification_version = 4

  s.add_development_dependency('irb')
  s.add_runtime_dependency('fortschritt', ['~> 0.2'])
  s.add_runtime_dependency('json', ['~> 2.1'])
  s.add_runtime_dependency('nokogiri', ['~> 1.10'])
  s.add_runtime_dependency('tins', ['~> 1.20'])
end

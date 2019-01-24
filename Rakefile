# vim: set filetype=ruby et sw=2 ts=2:

require 'gem_hadar'

GemHadar do
  name        'fleep_transporter'
  author      'betterplace Developers'
  email       'developers@betterplace.org'
  homepage    "http://github.com/betterplace/#{name}"
  summary     'Transport Fleep to Slack'
  description "Convert Fleep JSON history into a Slack-importabl CSV file"
  test_dir    'spec'
  ignore      '.*.sw[pon]', 'pkg', 'Gemfile.lock', 'coverage', '.rvmrc',
    '.ruby-version', '.AppleDouble', 'tags', '.DS_Store', '.utilsrc',
    '.bundle', '.byebug_history', 'errors.lst', '.yardoc'
  readme      'README.md'
  title       "#{name.camelize}"
  executables ["fleep_transporter"]

  dependency 'fortschritt',    '~>0.2'
  dependency 'json',           '~>2.1'
  dependency 'nokogiri',       '~>1.10'
  dependency 'tins',           '~>1.20'

  # development_dependency 'rails'
end

task :default => :spec

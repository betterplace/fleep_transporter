# -*- encoding: utf-8 -*-
# stub: fleep_transporter 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "fleep_transporter".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["betterplace Developers".freeze]
  s.date = "2019-01-24"
  s.description = "Convert Fleep JSON history into a Slack-importabl CSV file".freeze
  s.email = "developers@betterplace.org".freeze
  s.executables = ["fleep_transporter".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "lib/fleep_transporter.rb".freeze, "lib/fleep_transporter/configuration.rb".freeze, "lib/fleep_transporter/fleep_attachment.rb".freeze, "lib/fleep_transporter/fleep_contact.rb".freeze, "lib/fleep_transporter/fleep_conversation.rb".freeze, "lib/fleep_transporter/fleep_history.rb".freeze, "lib/fleep_transporter/fleep_message.rb".freeze, "lib/fleep_transporter/version.rb".freeze]
  s.files = [".gitignore".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "VERSION".freeze, "bin/fleep_to_slack".freeze, "bin/fleep_transporter".freeze, "fleep_transporter.gemspec".freeze, "history.json".freeze, "lib/fleep_transporter.rb".freeze, "lib/fleep_transporter/configuration.rb".freeze, "lib/fleep_transporter/fleep_attachment.rb".freeze, "lib/fleep_transporter/fleep_contact.rb".freeze, "lib/fleep_transporter/fleep_conversation.rb".freeze, "lib/fleep_transporter/fleep_history.rb".freeze, "lib/fleep_transporter/fleep_message.rb".freeze, "lib/fleep_transporter/version.rb".freeze]
  s.homepage = "http://github.com/betterplace/fleep_transporter".freeze
  s.rdoc_options = ["--title".freeze, "FleepTransporter".freeze, "--main".freeze, "README.md".freeze]
  s.rubygems_version = "3.0.1".freeze
  s.summary = "Transport Fleep to Slack".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<gem_hadar>.freeze, ["~> 1.9.1"])
      s.add_runtime_dependency(%q<fortschritt>.freeze, ["~> 0.2"])
      s.add_runtime_dependency(%q<json>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.10"])
      s.add_runtime_dependency(%q<tins>.freeze, ["~> 1.20"])
    else
      s.add_dependency(%q<gem_hadar>.freeze, ["~> 1.9.1"])
      s.add_dependency(%q<fortschritt>.freeze, ["~> 0.2"])
      s.add_dependency(%q<json>.freeze, ["~> 2.1"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.10"])
      s.add_dependency(%q<tins>.freeze, ["~> 1.20"])
    end
  else
    s.add_dependency(%q<gem_hadar>.freeze, ["~> 1.9.1"])
    s.add_dependency(%q<fortschritt>.freeze, ["~> 0.2"])
    s.add_dependency(%q<json>.freeze, ["~> 2.1"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.10"])
    s.add_dependency(%q<tins>.freeze, ["~> 1.20"])
  end
end

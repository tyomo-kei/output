# -*- encoding: utf-8 -*-
# stub: plugins 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "plugins".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Robert Honer".freeze]
  s.date = "2015-10-05"
  s.description = "A flexible plugins framework.".freeze
  s.email = ["robert@payout.com".freeze]
  s.homepage = "http://github.com/payout/plugins".freeze
  s.licenses = ["BSD".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A flexible plugins framework.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2", ">= 3.2.0"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2", ">= 3.2.0"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2", ">= 3.2.0"])
  end
end

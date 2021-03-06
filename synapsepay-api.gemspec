Gem::Specification.new do |s|
  s.name        = 'synapsepay-api'
  s.version     = '1.0.0'
  s.date        = '2016-05-30'
  s.summary     = "Synapsepay Api v3"
  s.description = "Synapsepay Api v3 gem"
  s.authors     = ["Jose Calderon"]
  s.email       = 'jkalderonkiros@gmail.com'
  s.files       = ["lib/synapsepay-api.rb"]
  s.homepage    = 'http://rubygems.org/gems/synapsepay-api'
  s.license     = 'MIT'

  s.add_development_dependency('rest-client', '~> 2.0.0.rc2')
  s.required_ruby_version = '>= 2.0.0'
end
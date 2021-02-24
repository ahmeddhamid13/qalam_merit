Gem::Specification.new do |s|
  s.name        = "qalam_merit"
  s.summary     = "Reputation engine for Rails apps"
  s.description = "Manage badges, points and rankings (reputation) in your Rails app."
  s.homepage    = "https://github.com/merit-gem/merit"
  s.files       = `git ls-files`.split("\n").reject{|f| f =~ /^\./ }
  s.test_files  = `git ls-files -- test/*`.split("\n")
  s.license     = 'MIT'
  s.version     = '4.5.00'
  s.authors     = ["Tute Costa", "Ahmed Abdelhamid"]
  s.email       = ['tutecosta@gmail.com', 'a.hamid@nezam.io']

  s.required_ruby_version = '>= 2.3.0'

  s.add_runtime_dependency 'zeitwerk'

  s.add_development_dependency 'rails', '>= 5.1.6'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'minitest-rails'
  s.add_development_dependency 'mocha'
end

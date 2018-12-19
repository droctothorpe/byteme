$:.unshift(File.dirname(__FILE__) + "/lib")
require "byteme/version"

Gem::Specification.new do |gem|
  gem.name        = 'byteme'
  gem.version     = ByteMe::VERSION
  gem.date        = '2018-12-18'
  gem.summary     = "A simple CLI that converts between bytes, kilobytes, megabytes, etc."
  gem.description = "A simple CLI that converts between bytes, kilobytes, megabytes, etc."
  gem.authors     = ["Alexander Perlman"]
  gem.email       = 'thumbthrough@gmail.com'
  gem.files       =  Dir.glob('{bin,lib}/**/*') + %w(README.md LICENSE Gemfile)
  gem.executables = ["byteme"]
  gem.homepage    = 'https://github.com/droctothorpe/byteme'
  gem.license     = 'MIT'
  gem.add_runtime_dependency 'terminal-table', '~> 1.8', '>= 1.8.0'
end
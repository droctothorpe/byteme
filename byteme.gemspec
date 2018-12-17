Gem::Specification.new do |gem|
  gem.name        = 'byteme'
  gem.version     = '0.0.2'
  gem.date        = '2018-12-17'
  gem.summary     = "Convert between bytes, kilobytes, megabytes, etc."
  gem.description = "Convert between bytes, kilobytes, megabytes, etc."
  gem.authors     = ["Alexander Perlman"]
  gem.email       = 'thumbthrough@gmail.com'
  gem.files       = ["bin/byteme"]
  gem.executables = ["byteme"]
  gem.homepage    = 'https://github.com/droctothorpe/byteme'
  gem.license     = 'MIT'
  gem.add_runtime_dependency 'terminal-table', '~> 1.8.0'
end
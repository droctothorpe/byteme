$:.unshift(File.dirname(__FILE__) + "/lib")
require "byteme/byteme"

Gem::Specification.new do |gem|
  gem.name        = 'byteme'
  gem.version     = ByteMe::VERSION
  gem.date        = '2018-12-17'
  gem.summary     = "Convert between bytes, kilobytes, megabytes, etc."
  gem.description = "Convert between bytes, kilobytes, megabytes, etc."
  gem.authors     = ["Alexander Perlman"]
  gem.email       = 'thumbthrough@gmail.com'
  gem.files       = [*Dir.glob('lib/*'),
                     *Dir.glob('lib/**/*'),
                     'Gemfile',
                     'LICENSE',
                     'README.md']
  gem.executables = ["byteme"]
  gem.homepage    = 'https://github.com/droctothorpe/byteme'
  gem.license     = 'MIT'
  gem.add_runtime_dependency 'terminal-table', '~> 1.8.0'
end

# gem.files       = %w{Gemfile Rakefile LICENSE README.md} + Dir.glob("{lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) } + Dir.glob("*.gemspec")
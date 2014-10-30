require "#{File.dirname(__FILE__)}/lib/method_reflect/version.rb"

Gem::Specification.new do |spec|
  spec.name          = 'method_reflect'
  spec.version       = MethodReflect::VERSION
  spec.authors       = ['Danny Purcell']
  spec.email         = %w(d.purcell.jr+method_reflect@gmail.com)
  spec.description   = %q{Adds several instance methods to the core Method class so methods can tell you more about themselves.}
  spec.summary       = %q{Gives Ruby Methods some deeper self-knowledge}
  spec.homepage      = 'http://dannypurcell.github.io/method_reflect'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'method_source', '~> 0.8.2'
  spec.add_dependency 'yard', '~> 0.8.7.6'
end

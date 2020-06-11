Gem::Specification.new do |s|
  s.name = 'nokorexi'
  s.version = '0.5.2'
  s.summary = 'nokorexi'
  s.authors = ['James Robertson']
  s.files = Dir['lib/nokorexi.rb']
  s.add_runtime_dependency('nokogiri', '~> 1.10', '>=1.10.9')
  s.add_runtime_dependency('rexle', '~> 1.5', '>=1.5.6')
  s.add_runtime_dependency('rxfhelper', '~> 1.0', '>=1.0.0') 
  s.signing_key = '../privatekeys/nokorexi.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/nokorexi'
  s.required_ruby_version = '>= 2.1.2'
end

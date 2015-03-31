Gem::Specification.new do |s|
  s.name = 'nokorexi'
  s.version = '0.3.0'
  s.summary = 'nokorexi'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_runtime_dependency('nokogiri', '~> 1.6', '>=1.6.2.1')
  s.add_runtime_dependency('rexle', '~> 1.0', '>=1.0.11')
  s.add_runtime_dependency('rxfhelper', '~> 0.1', '>=0.1.12') 
  s.signing_key = '../privatekeys/nokorexi.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/nokorexi'
  s.required_ruby_version = '>= 2.1.2'
end

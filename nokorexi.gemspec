Gem::Specification.new do |s|
  s.name = 'nokorexi'
  s.version = '0.7.0'
  s.summary = 'Uses Nokogiri to produce valid XHTML for ' +
      'use as a Rexle document.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/nokorexi.rb']
  s.add_runtime_dependency('nokogiri', '~> 1.13', '>=1.13.1')
  s.add_runtime_dependency('rexle', '~> 1.5', '>=1.5.14')
  s.add_runtime_dependency('rxfreader', '~> 0.1', '>=0.1.2')
  s.signing_key = '../privatekeys/nokorexi.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/nokorexi'
  s.required_ruby_version = '>= 2.1.2'
end

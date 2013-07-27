Gem::Specification.new do |s|
  s.name = 'nokorexi'
  s.version = '0.2.3'
  s.summary = 'nokorexi'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('nokogiri')
  s.add_dependency('rexle')
  s.add_dependency('rxfhelper') 
  s.signing_key = '../privatekeys/nokorexi.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/nokorexi'
end

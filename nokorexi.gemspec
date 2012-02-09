Gem::Specification.new do |s|
  s.name = 'nokorexi'
  s.version = '0.2.1'
  s.summary = 'nokorexi'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('nokogiri')
  s.add_dependency('rexle')
  s.add_dependency('rxfhelper')
end

Gem::Specification.new do |s|
  s.name = 'polyrex-object-methods'
  s.version = '0.2.0'
  s.summary = 'polyrex-object-methods'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/polyrex-object-methods.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/polyrex-object-methods'
  s.required_ruby_version = '>= 2.1.0'
end

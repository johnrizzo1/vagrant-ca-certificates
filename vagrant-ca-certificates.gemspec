# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-ca-certificates/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-ca-certificates'
  spec.version       = VagrantPlugins::CaCertificates::VERSION
  spec.authors       = ['William Bailey', 'John Bellone']
  spec.email         = ['mail@williambailey.org.uk', 'jbellone@bloomberg.net']
  spec.summary       = 'A Vagrant plugin that installs CA certificates onto the virtual machine.'
  spec.description   = <<-EOF
    A Vagrant plugin that installs CA certificates onto the virtual machine.
    This is useful, for example, in the case where you are behind a corporate proxy
    server that injects its own self signed SSL certificates when you visit https sites.
  EOF
  spec.homepage      = 'https://github.com/williambailey/vagrant-ca-certificates'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = %w(lib)

  spec.cert_chain = ['certs/gem-public_cert.pem']
  spec.signing_key = File.expand_path(File.join(Dir.home, '.gem', 'gem-private_key.pem')) if $0 =~ /gem\z/

  spec.add_development_dependency 'bundler', '~> 2.1'
end

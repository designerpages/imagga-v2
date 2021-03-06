# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "imagga"
  s.date        = "2015-07-22"
  s.version     = "0.1.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["REST United"]
  s.email       = ["api@imagga.com"]
  s.homepage    = "http://restunited.com/releases/709858516689487426/wrappers"
  s.summary     = %q{A ruby wrapper for https://api.imagga.com/v2 generated by swagger-codegen using RESTUnited.com}
  s.description = %q{<p>The <strong>Imagga API</strong> is a set of image understanding and analysis technologies available as a <strong>web service</strong> that allow you to <strong>automate the process of analyzing, organizing and searching</strong> through large collections of unstructured <strong>images</strong>.</p>

<p>You can find the available SDKs here for various languages and platforms.</p>
}
  s.license     = 'Apache License, Version 2.0' 

  # pending integration with rubyforge
  #s.rubyforge_project = "imagga"

  #s.add_dependency 'typhoeus', '>=0.2.1'
  #s.add_dependency 'addressable', '>=2.2.4'
  #s.add_dependency 'json', '>=1.4.6'
  s.add_runtime_dependency 'typhoeus', '~> 0.2', '>= 0.2.1'
  s.add_runtime_dependency 'addressable', '~> 2.2', '>= 2.2.4'
  s.add_runtime_dependency 'json', '~> 1.4', '>= 1.4.6'

  s.files         = `find *`.split("
").uniq.sort.select{|f| !f.empty? }
  s.executables   = []
  s.require_paths = ["lib", "models"]
end

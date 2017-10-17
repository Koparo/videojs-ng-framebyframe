# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "videojs/ng/framebyframe/version"

Gem::Specification.new do |spec|
  spec.name          = "videojs-ng-framebyframe"
  spec.version       = Videojs::Ng::Framebyframe::VERSION
  spec.authors       = ["Adam Wolk"]
	spec.email         = ["adam.wolk@koparo.com"]

	spec.summary       = %q{video.js frame-by-frame plugin javascript bundle}
  spec.description   = %q{frame-by-frame stepping plugin for use with video.js}
	spec.homepage      = "https://github.com/koparo/videojs-ng-framebyframe"
	spec.license			 = 'ISC'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"

	spec.add_dependency "videojs-ng", "~> 6.2.7"
end

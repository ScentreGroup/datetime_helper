# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'westfield_datetime_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "westfield_datetime_helper"
  spec.version       = WestfieldLabs::DatetimeHelper::VERSION
  spec.authors       = ["davesag"]
  spec.email         = ["davesag@gmail.com"]
  spec.summary       = "A collection of useful helpers for projects which have to deal with dates, times, and timezones."
  spec.description   = "Enforcing Zulu Time across a range of projects requires a common approach to how you validate incoming strings, how you represent the data internally, how you serialise the data back out into strings, and how you test all that consistently and efficiently. The Datetime Helpers provide that common approach."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "norikra-udf-dateformat"
  spec.version       = "0.1.0"
  spec.authors       = ["Takuya Kitazawa"]
  spec.email         = ["k.takuti@gmail.com"]

  spec.summary       = %q{Norikra UDF for flexible date formatting.}
  spec.description   = %q{Norikra UDF for flexible date formatting.}
  spec.homepage      = "https://github.com/takuti/norikra-udf-dateformat"
  spec.platform = "java"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "jar"]

  spec.add_runtime_dependency "norikra"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

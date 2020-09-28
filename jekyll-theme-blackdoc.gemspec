# coding: utf-8
# Specification for the Gem
Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-enfield"
  spec.version       = "0.0.2"
  spec.authors       = ["Marcel Artz"]
  spec.email         = ["mail@marcel-artz.de"]

  spec.summary       = %q{Black Theme for Jekyll}
  spec.homepage      = "https://github.com/ma744/ma744.github.io"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(public|_(includes|layouts)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.6"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.14.0"
  spec.add_development_dependency "bundler", "~> 2.1.4"
end

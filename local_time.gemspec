Gem::Specification.new do |s|
  s.name        = "local-time"
  s.version     = "1.0.0"
  s.author      = ["Muhammad Khan"]
  s.email       = "me@muhammadkhan.dev"
  s.summary     = "Rails engine for server-side local time"
  s.license     = "MIT"

  s.files = Dir["app/**/*", "lib/local_time.rb", "MIT-LICENSE", "README.md"]
  s.test_files = Dir["test/**/*"]
end

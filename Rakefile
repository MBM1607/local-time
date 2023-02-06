require "rake/testtask"
require "bundler/gem_tasks"
require "open3"

task default: :test

task test: ["test:helpers"]

namespace :test do
  Rake::TestTask.new(:helpers) do |t|
    t.pattern = "test/helpers/*test.rb"
  end
end

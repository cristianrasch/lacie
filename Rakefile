require "rake/testtask"

Rake::TestTask.new do |t|
  ENV["RACK_ENV"] = "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = true
end

task :default => :test
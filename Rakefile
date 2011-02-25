require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'
require 'rcov'

task :default => :spec

desc "Run RSpec"
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/*_spec.rb"
  t.verbose = true
end

desc "Measure test coverage"
RSpec::Core::RakeTask.new(:coverage) do |t|
  t.pattern = "./lib/user.rb"
  t.rcov = true
end

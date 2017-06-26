require 'bundler/gem_tasks'

require 'rake/testtask'

Rake::TestTask.new(:spec) do |test|
  test.test_files = FileList['test/**/*_test.rb']
  test.libs << 'spec'
  test.verbose = true
end

task default: %i(spec)

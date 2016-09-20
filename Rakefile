require 'rake/testtask'
task default: ['test:all']

Rake::TestTask.new('test:units') do |t|
  t.libs = ['lib', 'test']
  t.warning = true
  t.verbose = true
  t.test_files = FileList['test/units/*_test.rb']
end

Rake::TestTask.new('test:functionals') do |t|
  t.libs = ['lib', 'test']
  t.warning = true
  t.verbose = true
  t.test_files = FileList['test/functionals/*_test.rb']
end

Rake::TestTask.new("test:all") do |t|
  t.libs = ["lib", "test"]
  t.warning = true
  t.verbose = true
  t.test_files = FileList['test/**/*_test.rb']
end

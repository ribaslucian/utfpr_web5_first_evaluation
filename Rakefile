task default: [:test_units, :test_functionals]

desc 'Run the units test'
task :test_units do
  ruby 'test/units/velocity_test.rb'
  ruby 'test/units/weight_test.rb'
end

desc 'Run the functionals test'
task :test_functionals do
  ruby 'test/functionals/app_test.rb'
end

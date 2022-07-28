# desc "Explaining what the task does"
# task :chatbuddy do
#   # Task goes here
# end

desc 'Alias to app:app:template' 
task template: :environment do  
    Rake::Task['app:app:template'].invoke 
end
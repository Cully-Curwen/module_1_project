require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'Start our app console'
task :console do
    Pry.start
end

desc 'test enviroment'
task :test_env do 
    User.destroy_all
    Test.destroy_all
    Session.destroy_all
    
    User.create(name: "test", password: "pass")
    
end

desc 'Clean Install'
task :clean_install do
    User.destroy_all
    Test.destroy_all
    Session.destroy_all
end

desc 'Run the Game'
task :run do
    system 'ruby bin/run.rb '
end
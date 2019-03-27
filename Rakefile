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

    User.create(name: "Shazam", password: "pass")
    User.create(name: "test", password: "pass")

    Test.create(user_id: 1, question_id: 5, session: 1, credibility: 1)
    Test.create(user_id: 1, question_id: 51, session: 1, credibility: 1)
    Test.create(user_id: 2, question_id: 3, session: 2, credibility: 1)
    Test.create(user_id: 2, question_id: 8, session: 2, credibility: 0)
end

desc 'Clean Install'
task :clean_install do
    User.destroy_all
    Test.destroy_all
end

desc 'Run the Game'
task :run do
    system 'ruby bin/run.rb '
end
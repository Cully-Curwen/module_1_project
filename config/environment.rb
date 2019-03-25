require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'

# Question.get_questions_data("https://opentdb.com/api.php?amount=50&category=34&type=multiple")
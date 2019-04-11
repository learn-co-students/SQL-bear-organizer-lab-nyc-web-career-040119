require_relative 'environment'
require_relative 'sql_runner'

db = SQLite3::Database.new(':memory:')
sql_runner = SQLRunner.new(@db)
sql_runner.execute_create_file
sql_runner.execute_data

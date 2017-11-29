require 'bundler'
Bundler.require

# Setup a DB connection here
require_relative "../db/seed.rb"
require_relative "sqldb.rb"

system ("ruby /Users/MattMcAlister/Development/code/bonus-sql-challenge-web-112017/db/seed.rb")



database = SQLdb.all[0].db

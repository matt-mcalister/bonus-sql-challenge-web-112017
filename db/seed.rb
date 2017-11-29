# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
require "sqlite3"
require 'csv'
require "pry"
require "/Users/MattMcAlister/Development/code/bonus-sql-challenge-web-112017/config/sqldb.rb"

# require_relative "../daily_show_guests.csv"

db = SQLite3::Database.new ":memory:"
# binding.pry
# Create a database
# YEAR, GoogleKnowlege_Occupation ,Show ,Group ,Raw_Guest_List
# ex: 2002,journalist,7/9/02,Media,John King
db.execute("
  CREATE TABLE guests (
    year TEXT,
    GoogleKnowlege_Occupation TEXT,
    show TEXT,
    media_group TEXT,
    Raw_Guest_List TEXT
  );")


csv = CSV.read("/Users/MattMcAlister/Development/code/bonus-sql-challenge-web-112017/daily_show_guests.csv", :headers=>true)

csv.each do |row|
  db.execute "INSERT INTO guests values ( ?, ?, ?, ?, ? )", row.fields
end

SQLdb.new(db)


# binding.pry

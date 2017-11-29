# require_relative 'environment'
require 'pry'

class SQLdb

  attr_reader :db

  @@all = []

  def initialize(db)
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

end

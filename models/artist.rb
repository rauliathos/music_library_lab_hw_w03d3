require_relative ('album')
require_relative ('../db/sql_runner.rb')

class Artist

  attr_reader :id
  attr_accessor :name

  def initialize(options) ### this is what the instance variable are
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id" #this is the SQL code that gets passed to the DB
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def albums
    sql = "SELECT * FROM albums WHERE (artist_id) = ($1)"
    values = [@id]
    result = SqlRunner.run(sql, values)
    result.map{|album| Album.new(album)}
  end

  def Artist.show_all
    sql = "SELECT * FROM artists "
    result = SqlRunner.run(sql)
    result.map{|artist| Artist.new(artist)}
  end

  def Artist.delete_all
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end

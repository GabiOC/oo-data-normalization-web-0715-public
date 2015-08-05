require 'pry'

class Song
  # code goes here

  attr_accessor :title, :artist

  def initialize
    @title
  end

  def serialize
    formatted_title = @title.downcase.gsub(/\s/, "_")

    open("./tmp/#{formatted_title}.txt", "w") do |f|
      f.puts "#{artist.name} - #{@title}"
    end
  end
end

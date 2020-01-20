require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
    extend Memorable::ClassMethods
    extend Findable::ClassMethods
    include Paramable::InstanceMethods
    include Memorable::InstanceMethods
    
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end

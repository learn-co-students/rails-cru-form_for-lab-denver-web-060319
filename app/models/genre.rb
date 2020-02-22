class Genre < ActiveRecord::Base
  has_many :song
  has_many :artist, through: :song
end
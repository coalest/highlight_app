class Source < ApplicationRecord
  has_many :highlights

  validates_presence_of :title, :category, :origin
end

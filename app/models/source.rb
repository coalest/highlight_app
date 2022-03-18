class Source < ApplicationRecord
  has_many :highlights

  validates_presence_of :title, :author, :category, :origin
end

class Highlight < ApplicationRecord
  belongs_to :source
  belongs_to :user

  validates_presence_of :text, :location
end

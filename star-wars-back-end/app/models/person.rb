class Person < ApplicationRecord
  belongs_to :planet
  has_and_belongs_to_many :films
end

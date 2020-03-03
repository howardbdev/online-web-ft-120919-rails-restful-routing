class Sushi < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true

  # validates(:name { presence: true, uniqueness: true })

  # validates_presence_of :name
end

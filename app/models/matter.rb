class Matter < ApplicationRecord

validates :name, presence: true
validates :price, presence: true
validates :category, presence: true
validates :description, presence: true
validates :skill, presence: true

end
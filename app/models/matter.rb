class Matter < ApplicationRecord

  def user
    return User.find_by(id: self.user_id)
  end

validates :name, presence: true
validates :price, presence: true
validates :category, presence: true
validates :description, presence: true
validates :skill, presence: true

# belongs_to:user

end
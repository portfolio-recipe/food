class Recipe < ApplicationRecord

attachment :recipe_image

  has_many :favorites
  has_many :recipe_items,    dependent: :destroy

accepts_nested_attributes_for :recipe_items, allow_destroy: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search(search)
  	if search
  		where(['title LIKE ?', "%#{search}%"])
  	else
  		Recipe.all
  	end
  end

end

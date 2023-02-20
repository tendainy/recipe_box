class Tag < ApplicationRecord
  has_many :recipe_tags
  has_many :recipes, through: :recipe_tags

  attr_accessor :name, :id

  def self.create(name)
    # create a new tag in the database
  end

  def self.update(id, name)
    # update an existing tag in the database
  end

  def self.delete(id)
    # delete a tag from the database
  end
end

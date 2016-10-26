class PostTable < ApplicationRecord
  has_many :comments


  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end

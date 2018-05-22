class Product < ApplicationRecord
  belongs_to :category
  has_many :picks

  def show_last_pick
    picks.last
  end
end

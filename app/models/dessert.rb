class Dessert < ActiveRecord::Base
  has_many :names, dependent: :destroy
end

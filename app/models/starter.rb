class Starter < ActiveRecord::Base
  has_many :names, dependent: :destroy
  
end

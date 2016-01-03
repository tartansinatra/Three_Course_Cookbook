class Main < ActiveRecord::Base
  has_many :names, dependent: :destroy
end

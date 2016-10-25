class Mainpage < ActiveRecord::Base
	has_many :stepones, dependent: :destroy
	
end

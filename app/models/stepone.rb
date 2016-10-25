class Stepone < ActiveRecord::Base

	belongs_to :mainpage
	has_many :steptwos, dependent: :destroy
end

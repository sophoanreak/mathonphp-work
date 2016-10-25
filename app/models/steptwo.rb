class Steptwo < ActiveRecord::Base
	belongs_to :stepone
	has_many :stepthrees, dependent: :destroy
end

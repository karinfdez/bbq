class Registration < ActiveRecord::Base
	belongs_to :user
	belong_to :barbecue
end

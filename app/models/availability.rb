class Availability < ActiveRecord::Base
	has_and_belongs_to_many :peers
end
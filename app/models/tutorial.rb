class Tutorial < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :resource_languages
end

class Tutorial < ActiveRecord::Base
	is_impressionable
	belongs_to :user
	# has_and_belongs_to_many :resource_languages
	has_many :learning_languages, :as => :page
	acts_as_votable
end

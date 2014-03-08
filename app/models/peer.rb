class Peer < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	has_and_belongs_to_many :known_languages
	has_and_belongs_to_many :learning_languages
	has_and_belongs_to_many :site_interests
	has_and_belongs_to_many :availabilities

	validates :about_me, length: { :in => 25..800}
	validates_presence_of :known_languages, :learning_languages, :site_interests, :availabilities
end

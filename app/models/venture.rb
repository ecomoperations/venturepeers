class Venture < ActiveRecord::Base
	belongs_to :user
	#attr_accessible :language_need_ids, :type_project_ids
	#validates :user_id, presence: true
	#validates :type_project_id, presence: true
	has_and_belongs_to_many :type_ventures
	has_many :learning_languages, :as => :page
	# has_and_belongs_to_many :language_needs
	has_and_belongs_to_many :type_payments
	has_and_belongs_to_many :minimum_skills

	validates :venture_name, :presence => true
	
	validates :venture_name, length: { :in => 4..80}
    validates :about_venture, length: { :in => 25..800 }
    validates_presence_of :type_payments, :type_ventures, :learning_languages
end

class LearningLanguage < ActiveRecord::Base
	belongs_to :page, :polymorphic => true
end
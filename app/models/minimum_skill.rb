class MinimumSkill < ActiveRecord::Base
  #attr_accessible :thetype
  #validates :project_id, presence: true
  # has_and_belongs_to_many :ventures
  belongs_to :skill, :polymorphic => true 
end

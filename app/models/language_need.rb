class LanguageNeed < ActiveRecord::Base
  #attr_accessible :thetype
  #validates :project_id, presence: true
  has_and_belongs_to_many :ventures
end

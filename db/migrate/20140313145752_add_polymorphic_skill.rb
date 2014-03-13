class AddPolymorphicSkill < ActiveRecord::Migration
  def change
  	add_column :minimum_skills, :skill_id, :integer

    add_column :minimum_skills, :skill_type, :string
  end
end

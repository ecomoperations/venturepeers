class AddPolymorphic < ActiveRecord::Migration
  def change
  	add_column :learning_languages, :page_id, :integer

    add_column :learning_languages, :page_type, :string
  end
end

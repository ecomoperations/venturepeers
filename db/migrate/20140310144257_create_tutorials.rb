class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.integer :user_id
      t.string :title
      t.string :functionality
      t.text :body
      t.boolean :suggestion

      t.timestamps
    end

    create_table :resource_languages do |t|
      t.string :thetut
      t.timestamps
    end

    create_table :resource_languages_tutorials, id: false do |t|
      t.belongs_to :resource_language
      t.belongs_to :tutorial
    end
  end
end

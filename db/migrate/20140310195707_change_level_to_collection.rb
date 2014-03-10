class ChangeLevelToCollection < ActiveRecord::Migration
  def change
  	create_table :levels do |t|
      t.string :thelev
      t.timestamps
    end

    create_table :levels_peers, id: false do |t|
      t.belongs_to :level
      t.belongs_to :peer
    end
  end
end

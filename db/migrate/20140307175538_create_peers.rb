class CreatePeers < ActiveRecord::Migration
  def change
    create_table :peers do |t|
        t.integer :user_id
		t.integer :level
		t.text :about_me
    	

      t.timestamps
    end
    create_table :known_languages do |t|
      t.string :thelang
      t.timestamps
    end

    create_table :known_languages_peers, id: false do |t|
      t.belongs_to :known_language
      t.belongs_to :peer
    end
  


    create_table :learning_languages do |t|
      t.string :thelearn
      t.timestamps
    end

    create_table :learning_languages_peers, id: false do |t|
      t.belongs_to :learning_language
      t.belongs_to :peer
    end

    create_table :availabilities do |t|
      t.string :theavail
      t.timestamps
    end

    create_table :availabilities_peers, id: false do |t|
      t.belongs_to :availability
      t.belongs_to :peer
    end

    create_table :site_interests do |t|
      t.string :theinte
      t.timestamps
    end

    create_table :peers_site_interests, id: false do |t|
      t.belongs_to :site_interest
      t.belongs_to :peer
    end
  
  
  
  end
end



   

class CreateVentures < ActiveRecord::Migration
  def change
    create_table :ventures do |t|
		t.integer :user_id
      t.string :venture_name
      t.text :about_venture
      
      t.timestamps
    end

    create_table :type_payments do |t|
      t.string :thepay
      t.timestamps
    end

    create_table :type_payments_ventures, id: false do |t|
      t.belongs_to :type_payment
      t.belongs_to :venture
    end

    create_table :minimum_skills do |t|
      t.string :themin
      t.timestamps
    end
    create_table :minimum_skills_ventures, id: false do |t|
      t.belongs_to :minimum_skill
      t.belongs_to :venture
    end


    create_table :type_ventures do |t|
      t.string :thetype
      t.timestamps
    end

    create_table :type_ventures_ventures, id: false do |t|
      t.belongs_to :type_venture
      t.belongs_to :venture
    end
  
    
    create_table :language_needs do |t|
      t.string :theneed
      t.timestamps
    end

    create_table :language_needs_ventures, id: false do |t|
      t.belongs_to :language_need
      t.belongs_to :venture
    end
  

  end
end

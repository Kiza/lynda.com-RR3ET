class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      # t.integer "id" is build-in
      
      # create a string(varchar)column "first_name" 
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40
      
      # "created_at" and "updated_at"
      t.timestamps
    end
    
  end
  
end

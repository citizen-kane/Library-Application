class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	t.column :email, :string, :limit => 100, :null => false
	t.column :password, :string, :limit => 100, :null => false
	t.column :name, :string, :limit => 100, :null => false
	t.column :is_admin, :boolean, :null => false

      t.timestamps null: false
    end
     User.create :email => "abc@ncsu.edu", :password => "ncsu", :name => "Ncsu", :is_admin => "Y"
     User.create :email => "kagarwa@ncsu.edu", :password => "kagarwa", :name => "Krishna Agarwala", :is_admin => "N"    
  end
end

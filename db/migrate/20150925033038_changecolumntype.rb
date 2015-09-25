class Changecolumntype < ActiveRecord::Migration
def up 
  	change_column :books, :status, :boolean
end

def down
  	change_column :books, :status, :string
end

end
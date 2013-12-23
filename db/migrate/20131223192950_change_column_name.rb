class ChangeColumnName < ActiveRecord::Migration
  def up
    remove_column :categories, :type
    add_column :categories, :name, :string
  end

  def down
    add_column :categories, :type, :string
    remove_column :categories, :name
  end
end

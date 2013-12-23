class CreateEntryTable < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :description
    end
  end
end

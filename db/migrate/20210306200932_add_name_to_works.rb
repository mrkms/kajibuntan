class AddNameToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :work, :name, :string
    add_column :work, :point, :integer
    add_column :work, :user_id, :integer
    add_column :work, :home_id, :integer
  end
end

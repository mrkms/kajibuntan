class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      p t
      t.string :name
      t.timestamps
    end
  end
end

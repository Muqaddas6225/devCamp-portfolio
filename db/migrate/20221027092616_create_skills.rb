class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :percentage_utilized

      t.timestamps
    end
  end
end

class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.integer :input
      t.string :result

      t.timestamps
    end
  end
end

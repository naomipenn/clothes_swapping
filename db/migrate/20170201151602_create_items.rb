class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :size
      t.string :color
      t.string :type

      t.timestamps
    end
  end
end

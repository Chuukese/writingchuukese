class CreateChuuks < ActiveRecord::Migration
  def change
    create_table :chuuks do |t|
      t.string :search
      t.text :spelling
      t.text :region
      t.string :picture

      t.timestamps
    end
  end
end

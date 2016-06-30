class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :source
      t.date :date
      t.string :clave_munici
      t.string :neighborhood
      t.string :deaths
      t.string :name
      t.string :activity1
      t.string :activity2
      t.string :gender
      t.string :age
      t.string :killing_locationcorpse_location

      t.timestamps
    end
  end
end

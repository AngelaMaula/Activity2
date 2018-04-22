class CreateAmigas < ActiveRecord::Migration[5.2]
  def change
    create_table :amigas do |t|
      t.string :name
      t.string :age
      t.string :address
      t.date :bday

      t.timestamps
    end
  end
end

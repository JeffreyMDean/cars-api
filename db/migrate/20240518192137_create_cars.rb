class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :car_make
      t.string :car_model
      t.string :year

      t.timestamps
    end
  end
end

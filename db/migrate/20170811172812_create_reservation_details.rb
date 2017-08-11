class CreateReservationDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :reservation_details do |t|
      t.string :title
      t.text :body
      t.references :user

      t.timestamps
    end
  end
end

class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :email
      t.string :zip_code
      t.references :prefecture, foreign_key: { to_table: 'master_prefectures' }
      t.string :city
      t.string :street
      t.string :building
      t.string :phone_number

      t.timestamps
    end
  end
end

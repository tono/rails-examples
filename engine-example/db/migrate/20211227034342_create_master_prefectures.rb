class CreateMasterPrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :master_prefectures do |t|
      t.references :area, foreign_key: { to_table: 'master_areas' }
      t.string :name

      t.timestamps
    end
  end
end

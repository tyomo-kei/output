class CreateResolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :resolutions do |t|
      t.text :status,         null: false
      t.timestamps
    end
  end
end

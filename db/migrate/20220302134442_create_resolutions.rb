class CreateResolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :resolutions do |t|
      t.text :erroe_message,  null: false
      t.string :language,     null: false
      t.text :status,         null: false
      t.text :code,           null: false
      t.text :cauce,          null: false
      t.timestamps
    end
  end
end

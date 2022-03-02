class CreateErrors < ActiveRecord::Migration[6.0]
  def change
    create_table :errors do |t|
      t.text :erroe_message
      t.string :language
      t.text :status
      t.text :code
      t.text :cauce
      t.timestamps
    end
  end
end

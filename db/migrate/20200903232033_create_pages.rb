class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.text :information
      t.string :photo
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :object
      t.text :content
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :tel
      t.datetime :date

      t.timestamps
    end
  end
end

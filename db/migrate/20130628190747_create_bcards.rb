class CreateBcards < ActiveRecord::Migration
  def change
    create_table :bcards do |t|
      t.string :company
      t.text :desc
      t.string :phone
      t.string :website
      t.string :city
      t.string :state
      t.string :contact_name
      t.string :contact_pos
      t.string :contact_email
      t.string :contact_tel

      t.timestamps
    end
  end
end

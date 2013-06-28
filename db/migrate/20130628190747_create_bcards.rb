class CreateBcards < ActiveRecord::Migration
  def change
    create_table :bcards do |t|
      t.string :company
      t.text :desc
      t.string :phone
      t.string :website
      t.string :city
      t.string :state
      t.string :entered_by
      t.string :notes

      t.timestamps
    end
  end
end

class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

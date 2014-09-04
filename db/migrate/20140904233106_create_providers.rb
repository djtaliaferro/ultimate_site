class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :first_name
      t.string :last_name
      t.string :npi_number
      t.string :phone_number
      t.string :fax_number

      t.timestamps
    end
  end
end

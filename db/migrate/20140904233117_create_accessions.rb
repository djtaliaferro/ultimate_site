class CreateAccessions < ActiveRecord::Migration
  def change
    create_table :accessions do |t|
      t.string :accession_number
      t.date :collection_date
      t.date :date_received

      t.timestamps
    end
  end
end

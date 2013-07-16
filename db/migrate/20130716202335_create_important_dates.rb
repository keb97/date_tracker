class CreateImportantDates < ActiveRecord::Migration
  def change
    create_table :important_dates do |t|
      t.timestamp :day
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

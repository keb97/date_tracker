class ChangeDateType < ActiveRecord::Migration
  def change
    change_column :important_dates, :day, :date
  end
end

class RenameStartDateToStartdate < ActiveRecord::Migration[5.2]
  def change
  	rename_column :companies, :start_date, :startdate
  end
end

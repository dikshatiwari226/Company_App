class ChnagecolumntoCompany < ActiveRecord::Migration[5.2]
  def change
  	change_column :companies, :country_id, :string
  end
end

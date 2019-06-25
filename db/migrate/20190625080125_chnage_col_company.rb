class ChnageColCompany < ActiveRecord::Migration[5.2]
  def change
  	change_column :companies, :state_id, :string
  	change_column :companies, :city_id, :string
  end
end

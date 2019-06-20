class AddContryCodeToStates < ActiveRecord::Migration[5.2]
  def change
  	add_column :states, :country_code, :string 
  end
end

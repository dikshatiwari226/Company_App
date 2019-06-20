ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params	:name, :country_id, :state_id, :city_id, :postcode, :startdate, :active

	index	do
		id_column
		column :name
		column :country_id
		column :state_id
		column :city_id
		column :postcode
		column :startdate
		column :active
	end

	show do
		attributes_table :name, :country_id, :state_id, :city_id, :postcode, :startdate, :active
	end

	form do |f|
		f.inputs "companies details" do 
			f.input :name
			f.input :country_id
			f.input :state_id
			f.input :city_id
			f.input :postcode
			f.input :startdate
			f.input :active
		end
		f.actions
	end

end
	
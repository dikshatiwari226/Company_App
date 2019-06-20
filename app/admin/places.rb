ActiveAdmin.register Place do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :place_name, :company_id

	index do
		id_column 
		column :place_name
		column :company_id
	end

	show do
		attributes_table :place_name, :company_id
	end

	form do |f|
		f.inputs "place details" do
			f.input :place_name
			f.input :company_id
		end
		f.actions
	end

end

ActiveAdmin.register Country do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :country_name

	index	do
		id_column
		column :country_name
	end

	show do
		attributes_table :country_name
	end

	form do |f|
		f.inputs "country details" do
			f.input :country_name
		end
		f.actions
	end

end

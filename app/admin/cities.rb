ActiveAdmin.register City do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :city_name

	index do
		id_column
		column :city_name
	end

	show	do
		attributes_table :city_name
	end

	form do |f|
		f.inputs "city details" do
			f.input :city_name
		end
		f.actions
	end

end

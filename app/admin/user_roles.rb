ActiveAdmin.register UserRole do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :role_name

	index do
		id_column
		column :role_name
	end

	show do
		attributes_table :role_name
	end

	form do |f|
		f.inputs "UserRole details" do
			f.input :role_name
		end
		f.actions
	end

end

ActiveAdmin.register State do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :state_name

	index do
		id_column
		column :state_name
	end

	show do
		attributes_table :state_name
	end

	form do |f|
		f.inputs "state details" do
			f.input :state_name
		end
		f.actions
	end

end

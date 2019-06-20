ActiveAdmin.register Node do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :node_name, :place_id

	index do
		id_column 
		column :node_name
		column :place_id
	end

	show do
		attributes_table :node_name, :place_id
	end

	form do |f|
		f.inputs "node details" do
			f.input :node_name
			f.input :place_id
		end
		f.actions
	end
end

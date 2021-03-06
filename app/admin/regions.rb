ActiveAdmin.register Region do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :region_name

	index do
		id_column
		column :region_name
	end

	show do
		attributes_table :region_name
	end

	form do |f|
		f.inputs "region details" do
			f.input :region_name
		end
		f.actions
	end

end

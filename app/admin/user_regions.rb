ActiveAdmin.register UserRegion do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :user_id, :region_id

	index do
		id_column
		column :user_id
		column :region_id
	end

	show do
		attributes_table :user_id, :region_id
	end

	form do |f|
		f.inputs "UserRegion details" do
			f.input :user_id
			f.input :region_id
		end
		f.actions
	end
end

ActiveAdmin.register Image do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :user_id, :real_name, :image

	index	do
		id_column
		column :user_id
		column :real_name
		column :image
	end

	show	do
		attributes_table :user_id, :real_name, :image
	end

	form do |f|
		f.inputs "image details" do
			f.input :user_id
			f.input :real_name
			f.input :image
		end
		f.actions
	end
end

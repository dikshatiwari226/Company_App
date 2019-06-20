ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
	permit_params :email, :password,:password_confirmation, :first_name, :last_name, :company_id, :role_id, :start_date, :end_date, :monthly_charge, :notes, :image_id, :active


	index  do
  	id_column
  	column :email
    column :password
  	column :password_confirmation
  	column :first_name
  	column :last_name
  	column :company_id
  	column :role_id
  	column :start_date
  	column :end_date
  	column :monthly_charge
  	column :notes
  	column :image_id
  	column :active
  end

  show	do
  	attributes_table :email,:password, :password_confirmation, :first_name, :last_name, :company_id, :role_id, 
  	:start_date, :end_date, :monthly_charge, :notes, :image_id, :active
  end

  form	do |f|
  	f.inputs "User detail" do
  		f.input :email
      f.input :password
  		f.input	:password_confirmation
  		f.input	:first_name
  		f.input	:last_name
  		f.input	:company_id
  		f.input :role_id
  		f.input	:start_date
  		f.input :end_date
  		f.input	:monthly_charge
  		f.input :notes
  		f.input	:image_id
  		f.input	:active
  	end
  	f.actions
  end

end

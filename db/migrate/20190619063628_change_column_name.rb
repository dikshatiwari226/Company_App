class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	 rename_column :images, :image_name, :image
  end
end

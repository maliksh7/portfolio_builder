class RemoveFieldNameFromServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :s2_title, :string
    remove_column :services, :s2_desc, :text
    remove_column :services, :s3_title, :string
    remove_column :services, :s3_desc, :text
    remove_column :services, :s4_title, :string
    remove_column :services, :s4_desc, :text
    remove_column :services, :s5_title, :string
    remove_column :services, :s5_desc, :text
    remove_column :services, :s6_title, :string
    remove_column :services, :s6_desc, :text
  end
end

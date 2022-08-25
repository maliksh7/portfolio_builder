class RenameColumnNamesFromServices < ActiveRecord::Migration[7.0]
  def change
    rename_column :services, :s1_title, :title
    rename_column :services, :s1_desc, :description
  end
end

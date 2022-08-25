class RemoveColumnsFromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :bio, :text
    remove_column :resumes, :address, :string   
  end
end

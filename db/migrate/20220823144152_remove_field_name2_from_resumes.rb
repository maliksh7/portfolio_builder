class RemoveFieldName2FromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :begin_year, :integer
    remove_column :resumes, :complete_year, :integer    
    remove_column :resumes, :start_year, :integer
    remove_column :resumes, :end_year, :integer
  end
end

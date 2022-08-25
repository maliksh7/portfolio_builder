class RemoveFieldNameFromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :degree2_title, :string
    remove_column :resumes, :d2_start_year, :integer
    remove_column :resumes, :d2_end_year, :integer
    remove_column :resumes, :d2_institute, :string
    remove_column :resumes, :d2_details, :text
    remove_column :resumes, :role2_title, :string
    remove_column :resumes, :r2_start_year, :integer
    remove_column :resumes, :r2_end_year, :integer
    remove_column :resumes, :r2_company, :string
    remove_column :resumes, :r2_d1, :text
    remove_column :resumes, :r2_d2, :text
    remove_column :resumes, :r2_d3, :text
    remove_column :resumes, :r2_d4, :text
  end
end

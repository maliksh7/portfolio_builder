class RenameColumnNamesFromResumes < ActiveRecord::Migration[7.0]
  def change
    rename_column :resumes, :degree1_title, :degree_title
    rename_column :resumes, :d1_start_year, :begin_year
    rename_column :resumes, :d1_end_year, :complete_year
    rename_column :resumes, :d1_institute, :institute
    rename_column :resumes, :d1_details, :details
    rename_column :resumes, :role1_title, :role_title
    rename_column :resumes, :r1_start_year, :start_year
    rename_column :resumes, :r1_end_year, :end_year
    rename_column :resumes, :r1_company, :company
    rename_column :resumes, :r1_d1, :description

  end
end

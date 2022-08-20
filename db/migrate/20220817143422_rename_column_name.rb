class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :resumes, :d1_start_date, :d1_start_year
    rename_column :resumes, :d1_end_date, :d1_end_year
    rename_column :resumes, :d2_start_date, :d2_start_year
    rename_column :resumes, :d2_end_date, :d2_end_year
    rename_column :resumes, :r1_start_date, :r1_start_year
    rename_column :resumes, :r1_end_date, :r1_end_year
    rename_column :resumes, :r2_start_date, :r2_start_year
    rename_column :resumes, :r2_end_date, :r2_end_year

  end
end

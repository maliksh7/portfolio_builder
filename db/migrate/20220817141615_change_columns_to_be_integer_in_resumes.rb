class ChangeColumnsToBeIntegerInResumes < ActiveRecord::Migration[7.0]
  def change
    change_column :resumes, :d1_start_date, :integer
    change_column :resumes, :d2_start_date, :integer
    change_column :resumes, :r1_start_date, :integer
    change_column :resumes, :r2_start_date, :integer
    change_column :resumes, :d1_end_date, :integer
    change_column :resumes, :d2_end_date, :integer
    change_column :resumes, :r1_end_date, :integer
    change_column :resumes, :r2_end_date, :integer

  end
end

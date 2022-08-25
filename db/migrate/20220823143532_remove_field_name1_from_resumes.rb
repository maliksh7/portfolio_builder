class RemoveFieldName1FromResumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :resumes, :r1_d2, :text
    remove_column :resumes, :r1_d3, :text
    remove_column :resumes, :r1_d4, :text
  end
end

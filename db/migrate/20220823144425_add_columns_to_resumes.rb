class AddColumnsToResumes < ActiveRecord::Migration[7.0]
  def change
    add_column :resumes, :badge, :string
    add_column :resumes, :duration, :string  


  end
end

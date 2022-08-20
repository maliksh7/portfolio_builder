class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.text :bio
      t.string :address
      t.string :degree1_title
      t.date :d1_start_date
      t.date :d1_end_date
      t.string :d1_institute
      t.text :d1_details
      t.string :degree2_title
      t.date :d2_start_date
      t.date :d2_end_date
      t.string :d2_institute
      t.text :d2_details
      t.string :role1_title
      t.date :r1_start_date
      t.date :r1_end_date
      t.string :r1_company
      t.text :r1_d1
      t.text :r1_d2
      t.text :r1_d3
      t.text :r1_d4
      t.string :role2_title
      t.date :r2_start_date
      t.date :r2_end_date
      t.string :r2_company
      t.text :r2_d1
      t.text :r2_d2
      t.text :r2_d3
      t.text :r2_d4
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

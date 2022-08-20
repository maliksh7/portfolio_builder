class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.text :service_info
      t.string :s1_title
      t.text :s1_desc
      t.string :s2_title
      t.text :s2_desc
      t.string :s3_title
      t.text :s3_desc
      t.string :s4_title
      t.text :s4_desc
      t.string :s5_title
      t.text :s5_desc
      t.string :s6_title
      t.text :s6_desc
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

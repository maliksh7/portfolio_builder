class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.text :about_me
      t.date :birthday
      t.integer :age
      t.string :website
      t.string :degree
      t.integer :phone
      t.string :email
      t.string :city
      t.string :freelance
      t.text :add_more
      t.text :fact_info
      t.integer :clients
      t.integer :projects
      t.integer :hours_of_support
      t.integer :awards
      t.text :skill_description
      t.integer :HTML
      t.integer :CSS
      t.integer :JAVASCRIPT
      t.integer :PHP
      t.integer :WORDPRESS
      t.integer :PHOTOSHOP
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

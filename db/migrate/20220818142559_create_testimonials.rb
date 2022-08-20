class CreateTestimonials < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|
      t.string :person1_name
      t.string :p1_role
      t.text :p1_quote
      t.string :person2_name
      t.string :p2_role
      t.text :p2_quote
      t.string :person3_name
      t.string :p3_role
      t.text :p3_quote
      t.string :person4_name
      t.string :p4_role
      t.text :p4_quote
      t.string :person5_name
      t.string :p5_role
      t.text :p5_quote

      t.timestamps
    end
  end
end

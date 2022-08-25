class RemoveFieldNameFromTestimonials < ActiveRecord::Migration[7.0]
  def change
    remove_column :testimonials, :person2_name, :string
    remove_column :testimonials, :p2_role, :string
    remove_column :testimonials, :p2_quote, :text
    remove_column :testimonials, :person3_name, :string
    remove_column :testimonials, :p3_role, :string
    remove_column :testimonials, :p3_quote, :text
    remove_column :testimonials, :person4_name, :string
    remove_column :testimonials, :p4_role, :string
    remove_column :testimonials, :p4_quote, :text
    remove_column :testimonials, :person5_name, :string
    remove_column :testimonials, :p5_role, :string
    remove_column :testimonials, :p5_quote, :text

  end
end

class RenameColumn1NamesFromTestimonials < ActiveRecord::Migration[7.0]
  def change
    rename_column :testimonials, :person1_name, :name
    rename_column :testimonials, :p1_role, :role
    rename_column :testimonials, :p1_quote, :quote

  end
end

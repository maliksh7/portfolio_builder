class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :designation
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :skype
      t.string :linkedin
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

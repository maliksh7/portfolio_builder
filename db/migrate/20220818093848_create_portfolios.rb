class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.text :info
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

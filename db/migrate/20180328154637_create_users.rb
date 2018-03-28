class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :team
      t.string :first
      t.string :last
      t.string :email
      t.string :phone
      t.string :tournament_type
      t.boolean :agree

      t.timestamps
    end
  end
end

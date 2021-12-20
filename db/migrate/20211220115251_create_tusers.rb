class CreateTusers < ActiveRecord::Migration[6.1]
  def change
    create_table :tusers do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :username
      t.string :image
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end

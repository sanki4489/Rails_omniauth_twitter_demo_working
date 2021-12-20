class CreateTusers < ActiveRecord::Migration[6.1]
  def change
    create_table :tusers do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps
    end
  end
end

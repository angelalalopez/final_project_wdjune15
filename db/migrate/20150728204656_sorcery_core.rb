class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :first_name,       :null => false
      t.string  :last_name,        :null => false
      t.string  :email,            :null => false
      t.integer :initiative_id
      t.text    :about_me
      t.string  :crypted_password
      t.string  :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
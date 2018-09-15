class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :phone
      t.string   :email
      t.date     :birthdate
      t.string   :gender
      t.string   :experience
      t.boolean  :ruby
      t.boolean  :rails
      t.boolean  :mysql
      t.boolean  :git

      t.timestamps
    end
  end
end

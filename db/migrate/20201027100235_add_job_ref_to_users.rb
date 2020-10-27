class AddJobRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :job, null: false, foreign_key: true
  end
end

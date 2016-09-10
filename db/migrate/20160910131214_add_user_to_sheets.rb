class AddUserToSheets < ActiveRecord::Migration[5.0]
  def change
    add_reference :sheets, :user, foreign_key: true
  end
end

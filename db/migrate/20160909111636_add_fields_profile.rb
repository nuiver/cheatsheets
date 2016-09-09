class AddFieldsProfile < ActiveRecord::Migration[5.0]
  def change
    rename_column :profiles, :name, :first_name
    add_column :profiles, :last_name, :string
  end
end

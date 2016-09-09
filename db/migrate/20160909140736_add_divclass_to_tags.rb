class AddDivclassToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :div_class, :string
    add_column :tags, :fallback_icon, :string
  end
end

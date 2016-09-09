class CreateJoinTableSheetsTags < ActiveRecord::Migration[5.0]
  def change
    create_join_table :sheets, :tags do |t|
      # t.index [:sheet_id, :tag_id]
      # t.index [:tag_id, :sheet_id]
    end
  end
end

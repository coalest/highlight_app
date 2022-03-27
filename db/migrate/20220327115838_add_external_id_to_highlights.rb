class AddExternalIdToHighlights < ActiveRecord::Migration[7.0]
  def change
    add_column :highlights, :external_id, :string
  end
end

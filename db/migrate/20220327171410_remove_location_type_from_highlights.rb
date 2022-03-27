class RemoveLocationTypeFromHighlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :highlights, :location_type, :string
  end
end

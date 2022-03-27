class AddBasicModel < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.string   :title
      t.string   :author
      t.string   :category
      t.string   :origin
      t.string   :external_id

      t.timestamps null: false
    end

    create_table :highlights do |t|
      t.text       :text
      t.integer    :location
      t.string     :location_type
      t.string     :external_id
      t.references :source, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end

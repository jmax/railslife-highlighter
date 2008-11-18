class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.belongs_to :album
      t.string     :title
      t.text       :description
      t.text       :credits
      t.boolean    :allow_download
      t.string     :get_pattern_link
      t.string     :asset_file_name
      t.string     :asset_content_type
      t.integer    :asset_file_size
      t.datetime   :asset_updated_at
      t.integer    :position

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end

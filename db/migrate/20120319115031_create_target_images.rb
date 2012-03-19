class CreateTargetImages < ActiveRecord::Migration
  def self.up
    create_table :target_images do |t|
      t.integer :id
      t.string :factory_id
      t.integer :image_version_id
      # Provider returned String for target type
      t.string :target
      # This is returned from factory (Need to clarify what this entails to decide whether 
      # we need to store this)
      t.string :parameters
      t.string :status
      t.string :status_details
      t.timestamps
    end
  end

  def self.down
    drop_table :target_images
  end
end

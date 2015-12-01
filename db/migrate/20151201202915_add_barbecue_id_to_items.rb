class AddBarbecueIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :barbecue_id, :integer
  end
end

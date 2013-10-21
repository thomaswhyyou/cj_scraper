class CreateMerchant < ActiveRecord::Migration
  def up
    create_table :merchants do |t|
      t.integer    :count
      t.integer    :cj_id
      t.text       :primary_name
      t.text       :secondary_name
      t.text       :status
      t.text       :desc
      t.text       :protected_kws
      t.text       :bidding_policy
      t.text       :page_url
      t.timestamps
    end
  end

  def down
    drop_table :merchants
  end
end

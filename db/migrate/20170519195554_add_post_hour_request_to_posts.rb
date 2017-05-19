class AddPostHourRequestToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :overtime_request, :decimal, null: false, default: 0
  end
end

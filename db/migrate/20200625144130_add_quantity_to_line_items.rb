# frozen_string_literal: true

class AddQuantityToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_column :line_items, :quantity, :integer, default: 1
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

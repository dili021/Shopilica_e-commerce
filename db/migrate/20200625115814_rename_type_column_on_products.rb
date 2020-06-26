# frozen_string_literal: true

class RenameTypeColumnOnProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :type, :category
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end

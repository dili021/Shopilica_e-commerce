# frozen_string_literal: true

class DropInstrumentsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :instruments
  end
end

# frozen_string_literal: true

class AddGroupRefToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :group, null: false, foreign_key: true
  end
end

class AddCurrentStateFieldToPersonTable < ActiveRecord::Migration
  def self.up
    add_column :people,       :current_state,       :string
  end

  def self.down
    remove_column :people,:current_state
  end
end

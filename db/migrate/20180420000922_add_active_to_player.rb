class AddActiveToPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :active, :boolean
  end
end

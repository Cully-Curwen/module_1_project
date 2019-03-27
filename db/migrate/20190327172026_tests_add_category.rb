class TestsAddCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :category, :string
  end
end

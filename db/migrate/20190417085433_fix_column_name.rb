class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :jobs, :descritpin, :description
  end
end

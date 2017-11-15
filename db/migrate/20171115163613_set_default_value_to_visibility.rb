class SetDefaultValueToVisibility < ActiveRecord::Migration
  def change
    change_column_default :roles, :visibility, true
  end
end

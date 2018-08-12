class ChangeTitleColumn < ActiveRecord::Migration
  def change
    change_column(:school_classes, :title, :string, null: false)
  end
end

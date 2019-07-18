class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :documents, :file, :files
  end
end

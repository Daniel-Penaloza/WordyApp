class AddCategoryIdToSecondaryLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :secondary_languages, :category_id, :integer
  end
end

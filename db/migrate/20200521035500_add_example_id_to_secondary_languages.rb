class AddExampleIdToSecondaryLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :secondary_languages, :example_id, :integer
  end
end

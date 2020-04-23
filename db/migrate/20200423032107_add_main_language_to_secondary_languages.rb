class AddMainLanguageToSecondaryLanguages < ActiveRecord::Migration[6.0]
  def change
    add_column :secondary_languages, :main_word, :string
  end
end

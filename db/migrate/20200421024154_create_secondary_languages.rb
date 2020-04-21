class CreateSecondaryLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :secondary_languages do |t|
      t.string :word
      t.string :sentence
      t.string :created_by
      t.string :string

      t.timestamps
    end
  end
end

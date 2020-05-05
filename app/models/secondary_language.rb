class SecondaryLanguage < ApplicationRecord
    belongs_to :category
    def turn_to_language
        self.word = translate_word(self.main_word)
        self.word = self.word.titleize
        self.main_word = self.main_word.titleize
    end
end

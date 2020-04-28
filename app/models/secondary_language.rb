class SecondaryLanguage < ApplicationRecord
    def turn_to_language
        self.word = translate_word(self.main_word) 
    end
end

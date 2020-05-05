class SecondaryLanguage < ApplicationRecord
    belongs_to :category
    def turn_to_language
        self.word = translate_word(self.main_word)
        self.word = self.word.titleize
        self.main_word = self.main_word.titleize
    end

    def self.search(search)
        if search
            word = SecondaryLanguage.find(main_word: search)
            if word
                self.where(id: word)
            else
                @words = SecondaryLanguage.all
            end
        else
            @words = SecondaryLanguage.all
        end
    end
end

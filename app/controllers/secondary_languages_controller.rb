class SecondaryLanguagesController < ApplicationController
    def main
        @words = SecondaryLanguage.all
        @word = SecondaryLanguage.new
        puts "The word is #{@word.inspect}"
    end

    def create
        puts "The params are #{params}"
        @word = SecondaryLanguage.create(secondary_language_params)
        #TODO: Add the current user.
        respond_to do |format|
            if @word.save
                puts "-------------------> #{@word.inspect}"
                format.html {redirect_to @word, notice: "Word added"}
                format.js
                format.json { render json: @word, status: :created, location: @word }
            else
                format.html { render action: "main" }
                format.json { render json: @word.errors, status: :unprocessable_entity }
            end
        end
    end


    private
        def secondary_language_params
            params.require(:secondary_language).permit(:word, :sentence, :created_by, :main_word)
        end
end
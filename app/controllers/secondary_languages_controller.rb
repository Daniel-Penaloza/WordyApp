class SecondaryLanguagesController < ApplicationController
    def main
        @words = SecondaryLanguage.all
        @word = SecondaryLanguage.new
    end

    def create
        @word = SecondaryLanguage.create(params[:main_word])
        #TODO: Add the current user.
        respond_to do |format|
            if @word.save
                format.html {redirect_to @word, notice: "Word added"}
                format.js
                format.json { render json: @word, status: :created, location: @sl }
            else
                format.html { render action: "main" }
                format.json { render json: @word.errors, status: :unprocessable_entity }
            end
        end
    end


    private
        def secondary_language_params
            params.require(:secondary_languages).permit(:word, :sentence, :created_by, :main_word)
        end
end
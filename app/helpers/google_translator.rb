require "google/cloud/translate"

module GoogleTranslator
    extend ActiveSupport::Concern

    def translate_word(word)
        contents = []
        translation_client = Google::Cloud::Translate.new(version: :v3)
        project_id = ENV["CLOUD_PROJECT_ID"]
        location_id = "us-central1"
        contents << word
        target_language_code = "es-mx"
        formatted_parent = Google::Cloud::Translate::V3::TranslationServiceClient.location_path(project_id, location_id)
        response = translation_client.translate_text(contents, target_language_code, formatted_parent)
        word = ""
        response.translations.each do |t|
            word = t.translated_text
        end
        word
    end
end
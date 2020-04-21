module ApplicationHelper
    require "google/cloud/translate"

    client = Google::Cloud::Translate.new

    project_id = "my-project-id"
    location_id = "us-central1"

    # The content to translate in string format
    contents = ["Hello, world!"]
    # Required. The BCP-47 language code to use for translation.
    target_language = "fr"
    parent = client.class.location_path project_id, location_id

    response = client.translate_text contents, target_language, parent

    # Display the translation for each input text provided
    response.translations.each do |translation|
    puts "Translated text: #{translation.translated_text}"
    end
end

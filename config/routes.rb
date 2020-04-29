Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :secondary_languages
    root to: 'secondary_languages#main'
  end
end

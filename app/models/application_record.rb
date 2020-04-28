class ApplicationRecord < ActiveRecord::Base
  include GoogleTranslator
  self.abstract_class = true
end

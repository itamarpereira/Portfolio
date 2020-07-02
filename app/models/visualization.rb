class Visualization < ApplicationRecord
  LANGUAGES = ["english", "portuguese", "french"]
  THEMES = ["solar","lunar"]

  belongs_to :selection
  validates :language, inclusion: { in: LANGUAGES, message: "%{value} is not a valid language" }
  validates :theme, inclusion: { in: THEMES, message: "%{value} is not a valid theme" }
end
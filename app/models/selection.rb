class Selection < ApplicationRecord
  has_many :projects
  has_many :visualizations
end

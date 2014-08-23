class Word < ActiveRecord::Base
  validates :word, presence: true
  validates :definition, presence: true
end

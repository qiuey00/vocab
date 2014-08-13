class Game < ActiveRecord::Base
  belongs_to :player
  has_many   :questions

  validates_presence_of :player
end

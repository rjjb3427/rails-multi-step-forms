class Form < ActiveRecord::Base
  validates :body, presence: true
end

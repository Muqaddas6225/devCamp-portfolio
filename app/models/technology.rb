class Technology < ApplicationRecord
  belongs_to :portfolio, class_name: 'Portfolio'
end

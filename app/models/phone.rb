class Phone < ApplicationRecord
  belongs_to :contact, optional: true
  delegate :name, to: :contact, prefix: true, allow_nil: true
end

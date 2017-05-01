class Firework < ApplicationRecord
  has_many :alternate_names, dependent: :destroy
  accepts_nested_attributes_for :alternate_names, allow_destroy: true, reject_if: proc { |att| att['alt_name'].blank? }
end

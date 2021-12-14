class Job < Sequel::Model
  one_to_one :company
  one_to_many :applies
end

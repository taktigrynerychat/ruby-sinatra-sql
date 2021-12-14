class Apply < Sequel::Model
  one_to_one :geek
  one_to_one :job
end

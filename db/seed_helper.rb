def create_practice_units
  Unit.delete_all
  acc_t = Unit.create(:units => 'AccumulatedTime')
  acc_a = Unit.create(:units => 'AccumulatedAmount')

  PracticeUnit.delete_all
  prost = PracticeUnit.create(:unit_name => 'prost', :unit => acc_a)
  mntr = PracticeUnit.create(:unit_name => 'mntr', :unit => acc_a)
  cont = PracticeUnit.create(:unit_name => 'cont', :unit => acc_t)

  Practice.delete_all
  rfg = Practice.create(:name => 'Rfg', :acronym => 'rfg')
  bch = Practice.create(:name => 'Bch', :acronym => 'bch')

  DefaultPractice.delete_all
  DefaultPractice.create(:practice => rfg, :practice_unit => prost, :amount => 100000)
  DefaultPractice.create(:practice => bch, :practice_unit => cont, :amount => 5000)
end

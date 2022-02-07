require 'rails_helper'

RSpec.describe Cat, type: :model do
  it 'should validate a name' do
  cat = Cat.create
  expect(cat.errors[:name]).to_not be_empty
  end
  it 'validate an age' do
    cat= Cat.create
    expect(cat.errors[:age]).to_not be_empty
  end
  it 'validate an enjoys' do
    cat= Cat.create
    expect(cat.errors[:enjoys]).to_not be_empty
  end
end

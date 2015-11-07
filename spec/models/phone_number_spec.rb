require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  let(:phone_number) do
    PhoneNumber.new(number: '1234567890', person_id: 1)
  end

  it 'is a valid number' do
    expect(phone_number).to be_valid
  end

  it 'is only valid with a number' do
    phone_number.number = nil
    expect(phone_number).not_to be_valid
  end

  it 'must have a referene to a person' do
    phone_number.person_id = nil
    expect(phone_number).not_to be_valid
  end

  it 'is asociated with a person' do
    expect(phone_number).to respond_to(:person)
  end
end

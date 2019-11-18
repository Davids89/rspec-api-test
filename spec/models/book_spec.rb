RSpec.describe Book, type: :model do
  # Validations
  describe 'Validations' do
    context 'name' do
      it { is_expected.to validate_length_of(:name).is_at_least(5) }
      it { is_expected.to validate_length_of(:name).is_at_most(25) }
    end
  end
end

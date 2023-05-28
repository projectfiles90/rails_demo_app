require 'rails_helper'

RSpec.describe ActiveRecord::Base, type: :model do
  describe '#connection' do
    it 'returns a connection object' do
      connection = ActiveRecord::Base.connection
      expect(connection).to be_a(ActiveRecord::ConnectionAdapters::AbstractAdapter)
    end

    it 'can execute SQL queries' do
      result = ActiveRecord::Base.connection.execute("SELECT 1+1")
      expect(result[0][0]).to eq(2)
    end
  end
end

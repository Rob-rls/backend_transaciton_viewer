require 'response_generator'

describe ResponseGenerator do
  context 'When a request is received, it responds with' do
    it 'sucessful' do
      expect(subject.response_message).to eq({ status: "successful" })
    end
  end
end

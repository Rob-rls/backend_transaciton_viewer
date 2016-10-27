require './lib/response_generator'

describe ResponseGenerator do
  context 'When a request is received, it randomly responds with' do
    it 'sucessful' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(subject.response_message).to eq({ status: 'successful' })
    end

    it 'fradulent' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(subject.response_message).to eq({ status: 'fradulent' })
    end

    it 'timed_out' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(subject.response_message).to eq({ status: 'timed_out' })
    end
  end
end

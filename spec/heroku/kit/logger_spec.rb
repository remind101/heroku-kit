require 'spec_helper'

describe Heroku::Kit::Logger do
  subject(:logger) { described_class.new }

  around do |example|
    verbosity = $VERBOSE
    $VERBOSE = nil
    old = STDOUT
    STDOUT = StringIO.new
    example.run
    STDOUT.flush
    STDOUT = old
    $VERBOSE = verbosity
  end

  context 'when there is no request_id set' do
    it 'logs simply' do
      logger.info 'foobar'
      expect(STDOUT.string).to eq "foobar\n"
    end
  end

  context 'when there is a request_id' do
    around do |example|
      RequestId.with_request_id 'AiDaShie9t' do
        example.run
      end
    end

    it 'logs the request_id' do
      logger.info 'foobar'
      expect(STDOUT.string).to eq "request_id=AiDaShie9t foobar\n"
    end
  end
end

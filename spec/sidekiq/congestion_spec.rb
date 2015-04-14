require 'spec_helper'

describe Sidekiq::Congestion do
  it 'should enable track_rejected' do
    expect(::Congestion.default_options).to include track_rejected: true
  end

  it 'should set the redis connection' do
    expect(Sidekiq).to receive :redis
    ::Congestion.redis.call
  end
end

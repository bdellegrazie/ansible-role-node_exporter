require 'spec_helper'

describe port(9100) do
  it { should be_listening }
end

describe service('node_exporter') do
  it { should be_enabled }
  it { should be_running }
end

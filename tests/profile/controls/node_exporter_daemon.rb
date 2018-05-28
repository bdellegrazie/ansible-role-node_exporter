control 'node-exporter-daemon' do
  title 'Node Exporter Daemon'
  impact 1.0
  desc '
    Ensure Node Exporter Daemon is running
  '

  describe port(9100) do
    it { should be_listening }
  end

  describe service('node_exporter') do
    it { should be_enabled }
    it { should be_running }
  end
end

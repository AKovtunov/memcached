describe package('memcached') do
  it { should be_installed }
end

describe service('memcached_backend_cache') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe service('memcached_web_cache') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe command('ps aux | grep -q memcached_painful_cache') do
  its('exit_status') { should eq 0 }
end

describe port(11_212) do
  it { should be_listening }
end

describe port(11_213) do
  it { should be_listening }
end

describe port(11_214) do
  it { should be_listening }
end

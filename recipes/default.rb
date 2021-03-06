directory '/etc/blackfire' do
  owner 'root'
  group 'root'
  mode '0775'
  action :create
end

template 'blackfire-agent' do
  source 'agent.erb'
  path '/etc/blackfire/agent'
  action :create
  owner 'root'
  group 'root'
  mode '0644'
end

case node['platform_family']
when 'rhel', 'fedora'
  yum_repository 'blackfire' do
    description 'blackfire'
    baseurl 'http://packages.blackfire.io/fedora/$releasever/$basearch'
    gpgkey 'https://packagecloud.io/gpg.key'
    gpgcheck false
    sslverify true
    sslcacert '/etc/pki/tls/certs/ca-bundle.crt'
    action :create
    only_if { node['blackfire']['install_repository'] }
  end

  %w(blackfire-agent blackfire-php).each do |pkg|
    package pkg
  end
when 'debian'
  apt_repository 'blackfire' do
    uri 'http://packages.blackfire.io/debian'
    distribution 'any'
    components ['main']
    key 'https://packagecloud.io/gpg.key'
    action :add
    only_if { node['blackfire']['install_repository'] }
  end

  %w(blackfire-agent blackfire-php).each do |pkg|
    package pkg do
      options '-o Dpkg::Options::="--force-confold"'
    end
  end
end

service 'blackfire-agent' do
  supports status: true, start: true, stop: true, restart: true
  action [:enable, :start]
end

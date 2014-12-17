name 'blackfire'
maintainer 'Olivier Dolbeau'
maintainer_email 'odolbeau@gmail.com'
license 'Apache 2.0'
description 'Installs blackfire'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.5'

recipe 'default', 'Installs blackfire-php & blackfire-agent.'

supports 'debian'
supports 'ubuntu'
supports 'redhat'
supports 'fedora'
supports 'centos'

depends 'apt'
depends 'yum'

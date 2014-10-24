name 'blackfire'
maintainer 'Olivier Dolbeau'
maintainer_email 'odolbeau@gmail.com'
license 'MIT'
description 'Installs blackfire'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

recipe 'default', 'Installs blackfire-php & blackfire-agent.'

supports 'debian'
supports 'ubuntu'

depends 'apt'

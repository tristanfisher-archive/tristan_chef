name              "timezone"
maintainer        "Amplfy"
maintainer_email  "tfisher@amplify.com"
license           "All Rights Retained"
description       "Simply sets the timezone to US/East"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.0"
recipe "timezone", "Sets timezone to US/East"

%w{ ubuntu debian }.each do |os|
  supports os
end

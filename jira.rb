require 'jira-ruby'

options = {
:username     => 'your_email', 
:password     => 'your_password', 
:site         => 'your_site', #example: https://edoscorp.atlassian.net
:context_path => '',
:auth_type    => :basic,
:use_ssl => true
}

client = JIRA::Client.new(options)
project = client.Project.find('PROJ')

project.issues.each do |issue|
  puts "#{issue.summary} - #{issue.labels}"
end

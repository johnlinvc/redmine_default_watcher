require 'redmine'

require_dependency 'default_watcher/hooks'
Redmine::Plugin.register :redmine_default_watcher do
  name 'Default Watcher plugin'
  author 'johnlinvc'
  description 'add a default watcher option to permission'
  version '0.0.1'
  url 'https://github.com/johnlinvc/redmine_default_watcher'
  author_url 'http://johnlinvc.me'
  permission :default_watcher, :issue_control => :default_watcher
end

module DefaultWatcher
  class Hooks < Redmine::Hook::ViewListener
    def controller_issues_new_before_save(context={})
      User.all.each do |u| 
        next unless u.allowed_to?(:default_watcher,context[:issue].project)
        context[:issue].add_watcher(u) unless context[:issue].watched_by?(u)
      end
    end
  end
end

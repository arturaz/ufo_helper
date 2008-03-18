source = File.join(File.dirname(__FILE__), 'public', 'ufo.js')
dest = File.join(RAILS_ROOT, 'public', 'javascripts', 'ufo.js')
FileUtils.cp(source, dest) unless File.exists?(dest)

ActionView::Base.send(:include, Arturaz::UfoHelper)

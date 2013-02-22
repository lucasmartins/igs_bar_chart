#encoding: utf-8
Gem::Specification.new do |s|
  s.name        = 'igs_bar_chart'
  s.version     = '0.0.1'
  s.required_ruby_version = '>= 1.9.1'
  s.date        = Date.today
  s.summary     = "Bar Chart is a gem for creating bar charts (duh!)."
  s.description = "#{s.summary} It uses D3 (Data Driven Documents) to aggregate the data and render the SVG awesomeness."
  s.authors     = ["Lucas N. Martins"]
  s.email       = 'lucasmartins@railsnapraia.com'
  s.files       = ['lib/igs_bar_chart.rb','lib/igs_bar_chart/bar_chart.rb','templates/_labels.html.erb','templates/_script.html.erb','templates/_style.css.erb']
  s.test_file  = 'test/test_igs_bar_chart.rb' 
  s.homepage    = 'https://github.com/lucasmartins/igs_bar_chart'
  s.license     = 'MIT'
  s.add_runtime_dependency 'd3_rails', '>= 3.0.6'
end

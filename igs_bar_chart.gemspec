#encoding: utf-8
Gem::Specification.new do |s|
  s.name        = 'igs_pie_chart'
  s.version     = '0.0.8'
  s.required_ruby_version = '>= 1.9.1'
  s.date        = Date.today
  s.summary     = "Pie Chart is a gem for pizza making."
  s.description = "#{s.summary} It uses D3 (Data Driven Documents) to aggregate the data and render the SVG awesomeness."
  s.authors     = ["Lucas N. Martins"]
  s.email       = 'lucas.martins@innovit.com.br'
  s.files       = ['lib/igs_pie_chart.rb','lib/igs_pie_chart/pie_chart.rb','templates/_labels.html.erb','templates/_script.html.erb','templates/_style.css.erb']
  s.test_file  = 'test/test_igs_pie_chart.rb' 
  s.homepage    = 'https://github.com/lucasmartins/igs_pie_chart'
  s.license     = 'MIT'
  s.add_runtime_dependency 'd3_rails', '>= 2.10', '< 3.0'
end
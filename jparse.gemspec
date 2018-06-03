Gem::Specification.new do |s|
  s.name        = 'jparse'
  s.version     = '0.1.0'
  s.date        = '2018-06-03'
  s.summary     = "Japanese text parser"
  s.description = "A CLI utility for parsing Japanese text and generating frequency lists."
  s.authors     = ["Spencer King"]
  s.executables << 'jparse'
  s.homepage    =
    'https://github.com/spencerking/jparse'
  s.add_runtime_dependency 'tiny_segmenter', '~> 0.0.6', '>= 0.0.6'
  s.license       = 'MIT'
end

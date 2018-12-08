Gem::Specification.new do |s|
    s.name = 'unfurld'
    s.version = '0.1.0'
    s.date = '2018-12-08',
    s.summary = 'Unfurl links like Slack.'
    s.authors = ['Paul Kuruvilla', 'Sarup Banskota', 'Marlin Forbes']
    s.files = [
        'lib/unfurld.rb',
        'lib/unfurld/*.rb',
        'lib/unfurld/client.rb',
        'lib/unfurld/metadata.rb',
        'lib/unfurld/providers/oembed.rb',
        'lib/unfurld/unfurld.rb',
    ]
    s.homepage = 'https://github.com/unfurld/unfurld'
    s.license = ''
    s.add_runtime_dependency 'httparty', '~> 0.13.7'
    s.add_runtime_dependency 'ruby-oembed', '~> 0.12.0'
end

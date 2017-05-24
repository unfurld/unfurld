require "bundler"
Bundler.require(:default)

require "oembed"

require_relative "lib/unfurld/unfurld"
require_relative "lib/unfurld/client"
require_relative "lib/unfurld/metadata"
require_relative "lib/unfurld/version"
require_relative "lib/unfurld/providers/oembed"

post '/api/v1/unfurl.json' do
  # Validate presence of urls key
  # Validate number of URLs
  request.body.rewind
  body = JSON.parse request.body.read
  urls = body['urls']

  data = []

  urls.each do |url|
    metadata = Unfurld.get_metadata(url)

    next unless metadata # Append to failed URLs?

    data.push({
      url: metadata.url,
      title: metadata.title # TODO: Add other fields
    })
  end

  JSON.generate({status: 200, data: data})
end

get '/' do
  <<-HTML
    <h2 style="text-align:center;margin-top:40px;">Unfurld is live!</h2>

    <br/></br>

    <p style="text-align:center;">
      Hit <b>POST</b> <a href="/api/v1/unfurl.json">/api/v1/unfurl.json</a> to get started.
    </p>
  HTML
end

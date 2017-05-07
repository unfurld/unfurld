require 'sinatra'

get '/api/v1/unfurl.json' do
  '{"status": 200}'
end

get '/' do
  <<-HTML
    <h2 style="text-align:center;margin-top:40px;">Unfurld is live!</h2>

    <br/></br>

    <p style="text-align:center;">
      Hit <a href="/api/v1/unfurl.json">/api/v1/unfurl.json</a> to get started.
    </p>
  HTML
end

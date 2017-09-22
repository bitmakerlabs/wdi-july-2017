require 'httparty'
html_response = HTTParty.get('http://localhost:3000/monsters')
puts html_response.body
text_response = HTTParty.get('http://localhost:3000/monsters.text')
json_response = HTTParty.get('http://localhost:3000/monsters.json')

ttc_response = HTTParty.get("http://myttc.ca/finch_station.json")
ttc_json = JSON.parse(ttc_response.body)

class Event < ActiveRecord::Base
  belongs_to :user
  has_many :travels

  include HTTParty

  base_uri "http://www.stubhub.com/listingCatalog/select/?q="
  format :json



  def self.test()
    # query_url = "https://api.stubhub.com/search/catalog/events/v3?&categoryId=1&q=#{@search}"
    # auth = { :bearer => "API KEY HERE" }
    # result = get(query_url, headers: {"Authorization" => "Bearer   'API KEY HERE' "})
  end

  def self.convert_query_to_url(params, options)
    params.map do |k,v|
      "%2B+#{k}%3A#{v}%0D%0A"
    end.join << self.defaults.merge!(options).map do |k,v|
      "&#{k}=#{v}"
    end.join
  end

  def self.make_request(klass, params, options)
    query_url = convert_query_to_url(params, options)
    result = get(query_url)
    parsed_result = JSON.parse(result.body)
    objects = parsed_result["response"]["docs"].map do |doc|
      klass.new(doc)
    end
    objects.length == 1 ? objects.first : objects
  end

  def self.defaults
      @options ||= {
        "start"   => 0,
        "rows"    => 10,
        "wt"      => "json"
      }
  end

end

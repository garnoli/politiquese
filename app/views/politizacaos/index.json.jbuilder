json.array!(@politizacaos) do |politizacao|
  json.extract! politizacao, :id, :title, :body
  json.url politizacao_url(politizacao, format: :json)
end

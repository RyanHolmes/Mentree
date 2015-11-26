json.array!(@map_nodes) do |map_node|
  json.extract! map_node, :id, :degree, :title, :content, :rating, :audio_path, :path
  json.url map_node_url(map_node, format: :json)
end

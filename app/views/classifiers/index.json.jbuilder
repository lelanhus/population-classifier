json.array!(@classifiers) do |classifier|
  json.extract! classifier, :id, :x1, :x2, :x3, :x4, :x5, :x6
  json.url classifier_url(classifier, format: :json)
end

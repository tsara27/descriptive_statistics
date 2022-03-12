module DescriptiveStatistics
  def sum(collection = self, &block)
    return 0.0 if collection.is_a? NilClass

    values = Support::convert(collection, &block)
    return DescriptiveStatistics.sum_empty_collection_default_value if values.empty?

    return values.reduce(:+)
  end
end

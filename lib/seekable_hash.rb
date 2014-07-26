class SeekableHash < Hash
  def seek(*args)
    args.inject(self) do |hash, key|
      hash.is_a?(Hash) ? hash[key] : nil
    end
  end
end

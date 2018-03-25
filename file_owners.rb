module FileOwners
  
  def self.group_by_owners(files)
    result = {}
    files.each do |key, value|
      if result.has_key?(value)
        result[value] << key
      else
        result["#{value}"] = [key]
      end
    end
    result
  end
end
  
files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}

puts FileOwners.group_by_owners(files)
class Dictionary
  
  attr_accessor :entries
  
  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.is_a?(Hash)
      @entries.merge!(entry)
    else
      @entries[entry] = nil
    end
  end
  
  def keywords
    @entries.keys.sort!
  end
  
  def include?(key)
    @entries.include?(key)
  end
  
  def find(reference_key)
    if @entries.empty? == true #|| @entries.include?(reference_key) != true
      return {}
    else
      find = @entries[reference_key]
      unless find
        find = @entries.select do |key, value|
          key =~ /^#{Regexp.quote(reference_key)}/
        end
        return find
      end
      result = {}
      result[reference_key] = find
      result
    end
  end
  
  
  def printable
    lines = []
    @entries.sort.each do |key, value| 
      lines << %Q{[#{key}] "#{value}"}
    end
    lines.join("\n")
  end

end 



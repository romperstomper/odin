require 'pp'
def dfs(path)
  res = Hash.new{[].freeze}
  begin
    Dir.foreach(path) do |x|
      filepath = File.join(path, x)
      if x.start_with?('.')
        next
      end
      #pp x
      if File.directory?(filepath)
        newpath = File.join(path, x)
        res.merge!(dfs(newpath))
      else
        res[path] += [x]
      end
    end
  rescue Exception
  end
  res
end

pp dfs('/tmp/')


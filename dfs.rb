require 'pp'

def dfs(path)
  res = Hash.new{[].freeze}
  Dir.foreach(path) do |x|
    if x.start_with?('.')
      next
    end
    pp x
    if File.directory?(x)
      newpath = File.join(path, x)
      res.merge(dfs(newpath))
    else
      res[path] += [x]
    end
  end
  res
end

pp dfs('/tmp')


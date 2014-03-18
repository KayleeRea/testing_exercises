
class Logger

  def initialize(path)
    @path = path
    @count = 0
    @array = []
  end

  def log(message)

    line = "#{message} #{Time.now}"


    @array.push(line)


    if @array.length > 6
      nil
    else
      File.open(@path, "w") do |x|
        @array.each do |line|
          x.puts line
        end
      end
    end
  end
end

def time(times = 1)
  require 'benchmark'
  ret = nil
  Benchmark.bm { |x| x.report { times.times { ret = yield } } }
  ret
end

require 'rubygems'

# load wirble
begin
    require 'wirble'
    require 'utility_belt'
    # init wirble
    Wirble.init
    rescue LoadError => err
        $stderr.puts "Couldn't load: #{err}"
    end

# Easily print methods local to an object's class
class Object
    def local_methods
      (methods - Object.instance_methods).sort
    end
  end
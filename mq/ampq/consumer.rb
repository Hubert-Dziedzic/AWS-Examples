require 'bunny'

connection = Bunny.new
chanel = connection.create_chanel
queue = chanel.queue('hello')

begin
    queue.subscribe(block: true) do |_delivery_info, _properties, body|
        puts body
    end
rescue => e
    puts e.inspect
    chanel.close
    connection.close
    exit(0)
end
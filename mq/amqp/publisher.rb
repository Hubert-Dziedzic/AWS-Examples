require 'bunny'

connnection_string = "amqps://admin:Testing123456!@b-af9968a8-96c0-40de-a249-0563a1ec9042.mq.us-east-1.on.aws:5671"
connnection = Bunny.new(connnection_string)
connnection.start

channel = connnection.create_channel
queue = channel.queue('hello')
exchange = channel.default_exchange

begin    
    exchange.publish("Hello World!", routing_key: queue.name)
    channel.close
    connnection.close
rescue => e
    puts e.inspect
    channel.close
    connnection.close
    exit(0)
end
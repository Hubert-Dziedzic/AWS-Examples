require 'bunny'

#config = {
#    host: "amqps://b-af9968a8-96c0-40de-a249-0563a1ec9042.mq.us-east-1.on.aws:5671", 
#    vhost: "/",
#    user: "admin",
#    password: "Testing123456!",
#    port: 5671
#}


connnection_string = "amqps://admin:Testing123456!@b-af9968a8-96c0-40de-a249-0563a1ec9042.mq.us-east-1.on.aws:5671"

connnection = Bunny.new(connnection_string)
connnection.start
#connnection = Bunny.new(*config)
channel = connnection.create_channel
queue = channel.queue('hello')

begin
    queue.subscribe(block: true) do |_delivery_info, _properties, body|
        puts body
    end
rescue => e
    puts e.inspect
    channel.close
    connnection.close
    exit(0)
end
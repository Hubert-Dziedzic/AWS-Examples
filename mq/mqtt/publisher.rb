require 'mqtt'

host = 'localhost'
topic 'test/topic'
message = "Hello world! MQTT"

begin
    MQTT::Client.connect(host) do |client|
        client.publish(topic,message)
    end
rescue => e
    puts e.inspect
end
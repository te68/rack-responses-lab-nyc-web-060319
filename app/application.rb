

class Application



def call(env)

  resp = Rack::Response.new

  # test2 = Time.new(2015,11,27,14,30)
  # puts test2.inspect
  # hour2 =  test2.to_s[11..12].to_i
  # puts hour2.inspect
  # puts hour2 < 12

  time = Time.now
  time = time.to_s[11..12].to_i

  if time < 12
    puts "its the morning"
    resp.write "Good Morning!"
  elsif time >= 12
    puts "its the afternoon"
    resp.write "Good Afternoon!"
  end

  resp.finish




end








end

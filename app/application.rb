class Application

    def call(environment)
      response = Rack::Response.new
      current_time = Time.now
      current_time.hour >= 12 ? (response.write "Good Afternoon") : (response.write "Good Morning")
      response.finish
    end
  
  end
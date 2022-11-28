$redis = if Rails.env.production?
           Redis.new(url: ENV['REDIS_URL'])
         else
           redis_configuration = YAML.load_file(Rails.root.join('config/redis.yml')).symbolize_keys[Rails.env.to_sym]
           $redis = Redis.new(redis_configuration)
         end

module KRL_CMD
  class Deploy
    def self.go(args)
      require LIB_DIR + 'common'
      app = KRL_COMMON::get_app
      prod_version = args.to_s.empty? ? app.version : args.to_s.to_i
      app.production_version = prod_version
      puts "Deployed version: #{app.production_version}"
      
    end
  end
end
#wimaxrf.rb


require 'sinatra/base'
require 'json'


class DocServer < Sinatra::Base

  set :public_folder, 'swagger-ui/dist'
  set :bind, '0.0.0.0'

  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end




  get '/' do

    redirect '/index.html'

  end




  get '/api/api-docs' do 

    content_type :json

    '{	
      "apiVersion": "1.0.0",
    	"swaggerVersion": "1.2",
    	"authorizations":{},
    	"apis":[
    	    {"path": "/default",
    	      "description": "Restore Base Station parameters from default configuration"
    	    },
          {"path": "/get",
            "description": "Get Base station Static Parameter"
          },
          {"path": "/Info",
            "description": "Get information about the Base Station."
          },
          {"path": "/inservice",
            "description": "Set Base Station in service state"
          },
          {"path": "/maintenance",
            "description": "Set Base Station to maintenance state"
          },
          {"path": "/restart",
            "description": "Restart the Base Station"
          },
          {"path": "/set",
            "description": "Set Basestation Static Parameter"
          },      
          {"path": "/status",
            "description": "Get status of WiMAX RF service"
          },      
          {"path": "/mobileclient",
            "description": "Get/Set parameters through mobile client"
          },
          {"path": "/monitor",
            "description": "Get information about the mobile station"
          },
          {"path": "/reregister",
            "description": "Re-register Mobile station"
          },
          {"path": "/showregister",
            "description": "Get all registered mobile stations"
          }
    	],
        "info": {
    		"title": "NITlab WiMAX RF services",
    		"description": "This is reference document for the WiMAX RF API provided by NITlab.",
    		"termsOfServiceUrl": "",
    		"contact": "",
    		"license": "",
    		"licenseUrl": ""
    	}
    }'

  end




  get '/api/api-docs/default' do

    content_type :json  

    File.read('api/v1/default.json')

  end




  get '/api/api-docs/get' do

    content_type :json

    File.read('api/v1/get.json')

  end




  get '/api/api-docs/Info' do

    content_type :json
    File.read('api/v1/info.json')

  end




  get '/api/api-docs/inservice' do

    content_type :json

    File.read('api/v1/inservice.json')

  end




  get '/api/api-docs/maintenance' do

    content_type :json

    File.read('api/v1/maintenance.json')

  end




  get '/api/api-docs/restart' do

    content_type :json

    File.read('api/v1/restart.json')

  end




  get '/api/api-docs/set' do

    content_type :json

    File.read('api/v1/set.json')

  end




  get '/api/api-docs/status' do

    content_type :json

    File.read('api/v1/status.json')

  end




  get '/api/api-docs/mobileclient' do

    content_type :json

    File.read('api/v1/mobileclient.json')

  end




  get '/api/api-docs/monitor' do

    content_type :json

    File.read('api/v1/monitor.json')

  end




  get '/api/api-docs/reregister' do

    content_type :json

    File.read('api/v1/reregister.json')

  end




  get '/api/api-docs/showregister' do

    content_type :json

    File.read('api/v1/showregister.json')

  end

end


DocServer.run!
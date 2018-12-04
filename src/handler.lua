local BasePlugin = require "kong.plugins.base_plugin"
-- local access = require "kong.plugins.hello-world.access"

local HelloWorldHandler = BasePlugin:extend()

HelloWorldHandler.PRIORITY = 2000

function HelloWorldHandler:new()
  HelloWorldHandler.super.new(self, "hello-world")
end

function HelloWorldHandler:access(conf)
  HelloWorldHandler.super.access(self)

  if conf.say_hello then
    ngx.log(ngx.ERR, "============ Hello World Falabella! ============")
    ngx.header["Hello-World"] = "Hello World Falabella!!!"
  else
    ngx.log(ngx.ERR, "============ Bye World Falabella! ============")
    ngx.header["Hello-World"] = "Bye World Falabella!!!"
  end

end

return HelloWorldHandler

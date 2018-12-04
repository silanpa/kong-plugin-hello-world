local _M = {}

function _M.execute(conf)
  if conf.say_hello then
    ngx.log(ngx.ERR, "============ Hello World Falabella! ============")
    ngx.header["Hello-World"] = "Hello World Falabella!!!"
  else
    ngx.log(ngx.ERR, "============ Bye World Falabella! ============")
    ngx.header["Hello-World"] = "Bye World Falabella!!!"
  end
end

function _M.hello()
  return "Hello, World Falabella!"
end

return _M

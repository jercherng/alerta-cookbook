git '/opt/alerta-webui' do
  repository 'https://github.com/alerta/angular-alerta-webui.git'
  revision '4ba2012f1bc6db2beea72b25bf8d3b002746788f'
  action :sync
end

template '/opt/alerta-webui/app/config.js' do
  source 'alerta_webui/config.js.erb'
  variables(
    auth: node['alerta']['auth']
  )
end

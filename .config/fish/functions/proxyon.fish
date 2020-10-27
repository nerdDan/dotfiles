function proxyon
  set -Ux http_proxy "http://localhost:10809"
  set -Ux https_proxy $http_proxy
  set -Ux ftp_proxy $http_proxy
  set -Ux HTTP_PROXY $http_proxy
  set -Ux HTTPS_PROXY $http_proxy
  set -Ux FTP_PROXY $http_proxy
  set -Ux no_proxy local-delivery,local-auth
  dconf write /system/proxy/mode \'manual\'
  dconf write /system/proxy/http/host  \'localhost\'
  dconf write /system/proxy/https/host \'localhost\'
  dconf write /system/proxy/socks/host \'localhost\'
  dconf write /system/proxy/http/port  10809
  dconf write /system/proxy/https/port 10809
  dconf write /system/proxy/socks/port 10808
end

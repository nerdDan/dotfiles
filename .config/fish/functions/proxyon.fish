function proxyon
  set -Ux http_proxy "http://localhost:10809"
  set -Ux https_proxy $http_proxy
  set -Ux ftp_proxy $http_proxy
  set -Ux HTTP_PROXY $http_proxy
  set -Ux HTTPS_PROXY $http_proxy
  set -Ux FTP_PROXY $http_proxy
  set -Ux no_proxy local-delivery,local-auth
end

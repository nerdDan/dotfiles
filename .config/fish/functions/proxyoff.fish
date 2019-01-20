function proxyoff
  set -e http_proxy
  set -e https_proxy
  set -e ftp_proxy
  set -e HTTP_PROXY
  set -e HTTPS_PROXY
  set -e FTP_PROXY
  set -e no_proxy
end

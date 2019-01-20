function cleos
  docker exec -it eos cleos --url http://127.0.0.1:7777 --wallet-url http://127.0.0.1:5555 $argv;
end

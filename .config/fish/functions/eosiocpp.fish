function eosiocpp
	docker run --rm -v (pwd):/opt/eosio.cdt devbjune/eosio.cdt eosio-cpp $argv;
end

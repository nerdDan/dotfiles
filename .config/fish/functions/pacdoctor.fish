set pkgs ()
for list in $HOME/.config/fish/functions/pkglists/*
	set --append pkgs (cat $list)
end
set pkgs (echo $pkgs | tr " " "\n" | sort)

function check_dup
	set duplicated (echo $pkgs | tr " " "\n" | uniq --repeated)
	if set -q duplicated[1]
		echo "The following package(s) are duplicated in the list:"
		echo -e "\t" $duplicated
		return 1
	end
end

function check_ins
	set absent (comm -23 (echo $pkgs | tr " " "\n" | psub) (pacman -Qeq | sort | psub))
	if set -q absent[1]
		echo "The following package(s) should be explicitly installed:"
		echo -e "\t" $absent
		return 1
	end
end

function check_dep
	set redundant ()
	for pac in (pacman -Qeq)
		set req (pacman -Qi $pac | grep "Required By")
		if [ $req[1] != "Required By     : None" ]
			set --append redundant $pac
		end
	end
	if set -q redundant[1]
		echo "The following package(s) should be marked as non-explicitly installed:"
		echo -e "\t" $redundant
		return 1
	end
end

function check_unrequired_exp
	set unreq (comm -23 (pacman -Qenq | sort | psub) (echo $pkgs | tr " " "\n" | sort | psub))
	if set -q unreq[1]
		echo "The following package(s) are not listed thus should be removed:"
		echo -e "\t" $unreq
		return 1
	end
end

function check_unrequired_dep
	set unreq (pacman -Qdqtt)
	if set -q unreq[1]
		echo "The following package(s) are unrequired thus should be removed:"
		echo -e "\t" $unreq
		return 1
	end
end

function pacdoctor
	check_dup
	and check_ins
	and check_dep
	and check_unrequired_exp
	and check_unrequired_dep
end

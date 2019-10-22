set pkgs base
for list in $HOME/.config/fish/functions/pkglists/*
	set --append pkgs (cat $list)
end
set pkgs (echo $pkgs | tr " " "\n" | sort)

function check_dup
	set duplicated (comm -23 (echo $pkgs | tr " " "\n" | psub) (echo $pkgs | tr " " "\n" | uniq | psub))
	if set -q duplicated[1]
		echo "The following package(s) are duplicated in the list:"
		echo -e "\t" $duplicated
		return 1
	end
end

function check_ins
	set unins (comm -23 (echo $pkgs | tr " " "\n" | psub) (pacman -Qq | sort | psub))
	if set -q unins[1]
		echo "The following package(s) should be installed:"
		echo -e "\t" $unins
		return 1
	end
	set unins (comm -23 (echo $pkgs | tr " " "\n" | psub) (pacman -Qeq | sort | psub))
	if set -q unins[1]
		echo "The following package(s) should be marked as explicitly installed:"
		echo -e "\t" $unins
		return 1
	end
end

function check_dep
	set pacs (pacman -Qeq)
	set redundant ()
	for pac in $pacs
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
	set unreq (pacman -Qdqt)
	if set -q unreq[1]
		echo "The following package(s) are unrequired thus should be removed:"
		echo -e "\t" $unreq
		return 1
	end
	set unreq (pacman -Qdqtt)
	if set -q unreq[1]
		echo "The following package(s) are optionally required thus should be removed:"
		echo -e "\t" $unreq
		return 1
	end
end

function paccheck
	check_dup
	and check_ins
	and check_dep
	and check_unrequired_exp
	and check_unrequired_dep
end

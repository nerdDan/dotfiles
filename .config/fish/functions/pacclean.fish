function pacclean
	set pacs (comm -23 (pacman -Qeq | sort | psub) (pacman -Qgq base base-devel | sort | psub))
	for pac in $pacs
		set req (pacman -Qi $pac | grep -E "Required By|Optional For")
		if [ $req[1] != "Required By     : None" -o $req[2] != "Optional For    : None" ]
			sudo pacman -D --asdeps $pac
		end
	end
end

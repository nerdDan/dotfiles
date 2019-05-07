function pacleaves
	comm -23 (pacman -Qenq | sort | psub) (pacman -Qgq base base-devel | sort | psub) | less
end

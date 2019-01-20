function pacleaves
	comm -23 (yaourt -Qe | sort | psub) (yaourt -Qg base base-devel | sort | psub) | less
end

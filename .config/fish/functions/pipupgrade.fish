function pipupgrade --description 'update leaf pip packages in user-site'
	comm -12 (pip list --user --outdated --format freeze | cut -d = -f 1 | psub) (pip list --user --not-required --format freeze | cut -d = -f 1 | psub) | xargs -n1 pip install --user --upgrade
end

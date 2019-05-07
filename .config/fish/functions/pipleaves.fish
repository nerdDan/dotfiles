function pipleaves --description 'list leaf pip packages in user-site'
	pip list --user --not-required --format freeze | cut -d = -f 1
end

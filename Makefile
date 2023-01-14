git_clean:
	git status
	git reset --hard
	git pull
	git status

git_fast:
	git add -u
	git status
ifdef m
	git commit -m "$(m)"
else
	git commit -m "Fast push"
endif
ifdef b
	git push origin $(b)
else
	git push origin main
endif

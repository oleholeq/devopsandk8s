echo "# new-project" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:oleholeq/new-project.git
git push -u origin main
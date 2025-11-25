mkdir alice-repo && cd alice-repo
git init
git config user.name "Alice"
git config user.email "alice@example.com"
echo "README: Hello world" > README.md
echo "src placeholder" > main.py
git add .
git commit -m "Initial commit by Alice with README and main.py"

cd ../
git clone --bare ./alice-repo origin-repo.git
cd alice-repo
git remote add origin ../origin-repo.git
git push -u origin main
cd ../

git clone origin-repo.git bob-repo
cd bob-repo
git config user.name "Bob"
git config user.email "bob@example.com"

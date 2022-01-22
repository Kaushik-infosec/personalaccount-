pwd | awk -F/ '{print $NF }' > ./config
python3 git_repo_creator.py
git init
git add .
git commit -a --allow-empty-message -m ''
filename=`cat config`
git remote add origin https://github.com/kaushik-infosec/${filename}"-.git"
git push https://kaushik-infosec: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@github.com/kaushik-infosec/${filename}"-.git" 
#https://auth0.com/blog/secure-software-supply-chain-with-github-security-features/
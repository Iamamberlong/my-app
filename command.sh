# step 1: Create a new React app using create-react-app tool
# on desktop, create a new folder called blackbird, change directory to this new folder. run the following command:

npx create-react-app my-app
cd my-app

# Step 2: Initialise GitHub repository and push the code

gh auth login # input the auth info on github.com and also the code generated by git in terminal
gh repo create my-app --public --source=. --remote=origin
git add .
git commit -m "Initial commit"
git push -u origin main

# Step 3: create a new branch "update_logo"

git switch -c update_logo

# Step 4: replace the existing logo with a new logo, because opening https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg 
# returns 404 Not Found, so I used joomla's logo and saved the SVG in logo.svg. Also I replaced the link with the new link 
# https://www.propelleraero.com/dirtmate/

# Step 5: Commit and push the changes to the "update_logo" branch
git add .
git commit -m "Update logo and link"
git push origin update_logo

# Step 6: Create a Pull Request (PR) from "update_logo" to "main" branch
gh pr create --base main --head update_logo --title "Update logo and link" --body "Replacing logo and updating link"


# Step 7: Merge the PR 
gh pr merge --merge

# Step 8: Verify if everything is merged
git checkout main
git pull origin main

gh pr view --web 







#Bash script to switch onto specified branch and update it with master
#The switches you back onto master
if [ $# -eq 0 ]; then
    echo "Usage: branch to sync with origin master <branch-name>"
    exit
fi
b1=$1
echo -n "Have you pushed changes to origin/master? y/n: "
read -n 1 answer
if [ "$answer" = "y" ]; then
    printf "\nLets do it\n"
    git checkout "$b1"
    git pull origin master
    git push
    git checkout master
    printf "\n Relax, Changes Synced!\n"
else
    printf "\n\n"
    echo -n "Want me to do it for you? y/n: "
    read -n 1 ans
    if [ "$ans" = "y" ]; then
        git add .
        git commit -m "Automated commit"
        git push
        git checkout "$b1"
        git pull origin master
        git push
        git checkout master
        printf "\nRelax, Changes Synced!\n\n"
    else
        printf "\nDont trust me do you?\n"
    fi
fi

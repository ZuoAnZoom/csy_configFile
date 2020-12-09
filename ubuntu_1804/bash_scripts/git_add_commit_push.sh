#!/usr/bin/env bash
# for auto git add and commit and push

# step 1
echo -e "\033[33m#----------------git status----------------\033[0m"
git status
echo -e "\n"


# step 2
echo -e "\033[33m#----------------git add-------------------\033[0m"
read -p "Do you want to git add? [Y/n]" ANS0
case $ANS0 in
  [yY]|[yY][eE][sS])
    git add .
    echo -e "\033[32m add COMPLETE!\033[0m\n"
    ;;
  [nN]|[nN][oO])
    echo -e "\033[33mFine, I won't add anything :( \033[0m\n"
    ;;
  *)
    echo -e "\033[33mPlease input [yes/no], u idiot !\033[0m\n"
    exit 1
    ;;
esac


# step 3
echo -e "\033[33m#----------------git commit----------------\033[0m"
read -p "Do you want to git commit? [Y/n]" ANS1
case $ANS1 in
  [yY]|[yY][eE][sS])
    read -p "Please input the commit:" COMMIT
    git commit -m "$COMMIT"
    echo -e "\033[32m commit COMPLETE!\033[0m\n"
    ;;
  [nN]|[nN][oO])
    echo -e "\033[33mFine, I won't commit anything :( \033[0m\n"
    ;;
  *)
    echo -e "\033[33mPlease input [yes/no], u idiot !\033[0m\n"
    exit 1
    ;;
esac


# step 4
echo -e "\033[33m#----------------git push !----------------\033[0m"
read -p "Do you want to git push? [Y/n]" ANS2
case $ANS2 in
  [yY]|[yY][eE][sS])
    git push origin master
    echo -e "\033[32m push COMPLETE!\033[0m\n"
    ;;
  [nN]|[nN][oO])
    echo -e "\033[33mFine, I won't push anything :( \033[0m\n"
    ;;
  *)
    echo -e "\033[33mPlease input [yes/no], u idiot !\033[0m\n"
    exit 1
    ;;
esac

# step 5
echo -e "\033[33m#----------------git status----------------\033[0m"
git status
echo -e "\n"

exit 0


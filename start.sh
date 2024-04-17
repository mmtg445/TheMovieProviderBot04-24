if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jot43/TheMovieProviderBot04-24.git /TheMovieProviderBot04-24
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TheMovieProviderBot04-24
fi
cd /TheMovieProviderBot04-24
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot04-24...."
python3 bot.py

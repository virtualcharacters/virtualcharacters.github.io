

docker run -it -d --rm \
     --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
     --volume="$HOME/websites/virtualcharacters.github.io/web/:/virtualcharacters" \
     --publish="6006:6006" \
     --publish="1313:1313" \
     --name="vc" \
     vcdocker


     sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

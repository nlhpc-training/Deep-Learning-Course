export BACKUPFILE=$(date +%s)

if test -f "README.md"; then
    mv README.md .README.md.$BACKUPFILE
fi

if test -f "requirements.txt"; then
    mv requirements.txt .requirements.txt.$BACKUPFILE
fi

if test -f "IMPORTANTE"; then
    mv IMPORTANTE .IMPORTANTE.$BACKUPFILE
fi


echo "Downloading text files from GIT"
wget https://raw.githubusercontent.com/nlhpc-training/Deep-Learning-Course/master/README.md
wget https://raw.githubusercontent.com/nlhpc-training/Deep-Learning-Course/master/requirements.txt
wget https://raw.githubusercontent.com/nlhpc-training/Deep-Learning-Course/master/IMPORTANTE

echo "Loading modules and creating Python virtual environment"
ml purge
ml intel
ml Python
python -mvenv ~/curso_dl

echo "Loading Python requirements"
source ~/curso_dl/bin/activate
pip install -r requirements.txt
pip install yolo5
pip install -U scikit-learn
pip install tensorflow

echo "Checking and editing .bashrc file"
if grep -q "ml Python" ~/.bashrc; then
    echo "Python already loaded at .bashrc file"
else
    echo "ml Python" >> ~/.bashrc
fi

if grep -q "source curso_dl/bin/activate" ~/.bashrc; then
    echo "Python virtual environment already loaded at .bashrc file"
else
    echo "source curso_dl/bin/activate" >> ~/.bashrc
fi

if grep -q "cat IMPORTANTE" ~/.bashrc; then
    echo "Important message already at .bashrc file"
else
    echo "cat IMPORTANTE" >> ~/.bashrc
fi


echo "Done!"

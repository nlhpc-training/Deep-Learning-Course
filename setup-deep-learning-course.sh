echo "Downloading README and requirement files from GIT"
wget https://github.com/nlhpc-training/Deep-Learning-Course.git
wget https://github.com/nlhpc-training/Deep-Learning-Course.git

echo "Loading modules and creating Python virtual environment"
ml purge
ml intel
ml Python
python -mvenv ~/curso_dl

echo "Loading Python requirements"
source ~/curso_dl/bin/activate
pip install -r requirements.txt
pip install yolo5

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

echo "Done!"

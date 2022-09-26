ml purge
ml intel
ml Python
python -mvenv curso_dl
source .curso_dl/bin/activate
pip install -r requirements.txt
pip install yolo5


if grep -q "ml Python" ~/.bashrc; then
    echo "Python already loaded at .bashrc file"
else
    echo "ml Python" >> ~/.bashrc
fi

if grep -q "source .curso_dl/bin/activate" ~/.bashrc; then
    echo "Python virtual environment already loaded at .bashrc file"
else
    echo "source .curso_dl/bin/activate" >> ~/.bashrc
fi

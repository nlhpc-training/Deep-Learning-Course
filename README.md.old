# Pasos a seguir para creación de entorno virtual y carga de módulos necesarios para curso de Deep Learning.

## TL;DR

Puede ejecutar el siguiente comando:

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/nlhpc-training/Deep-Learning-Course/master/setup-deep-learning-course.sh)"
```

Si lo anterior presenta problemas puede leer en detalle la configuración del entorno.

## Acceder a la cuenta mediante SSH.

```
ssh stundentXX@leftraru.nlhpc.cl
```

Una vez que se acceda al cluster, se tendrá por defecto toolchain intel/2019b cargado.
Los pasos que se mencionan a continuación se realizan mediante dicho _toolchain_.

## Cargar módulo de Python

```
ml Python
```

## Creación de entorno virtual

```
python -mvenv curso_dl
source curso_dl/bin/activate
```

## Activación de entorno virtual 

```
source curso_dl/bin/activate
```

> La línea anterior es agregado al archivo `~/.bashrc` para cargarlo de manera automática en los accesos siguientes.

## Carga de módulos Python necesarios.

Con el entorno virtual activado ejecutaremos:

```
pip install -r requirements.txt
```

Si no contamos con el archivo `requirements.txt` se puede ejecutar lo siguiente:

```
pip install matplotlib>=3.2.2
pip install numpy>=1.18.5
pip install opencv-python>=4.1.1
pip install Pillow>=7.1.2
pip install PyYAML>=5.3.1
pip install requests>=2.23.0
pip install scipy>=1.4.1
pip install torch>=1.7.0
pip install torchvision>=0.8.1
pip install tqdm>=4.64.0
pip install tensorboard>=2.4.1
pip install pandas>=1.1.4
pip install seaborn>=0.11.0
pip install ipython  # interactive notebook
pip install psutil  # system utilization
pip install thop>=0.1.1  # FLOPs computation
```
## Instalación de Yolo5

```
pip install yolo5
```

¡Ya tenemos listo nuestro entorno para la realización del curso!

:)

# Image Classification with Convolutional Neural Network (CNN)

## Objective

The general objective is to create a model to predict whether an image has a cup / mug or not.

## Steps to achievement 
To achieve the goal, the following steps were necessary:
- Data processing
- Classification
- Neural Network Tunning
- Model Training

## Local usage

### Requirements
- Podman or Docker

### Steps
- In the same directory that you  just cloned, run the command below, this is time consuming and will download 1.2G of packages
   
   ```shell
   podman build --tag cnn-pipenv --squash -f Containerfile
   ```
   
- Then you just need to expose the current folder (the source code) and the dataset folder (already downloaded and extracted somewhere) 
   
   
   ```shell
   podman run -it --rm -v ../DATASETS/your_dataset_path:/dataset \
                       -v .:/root/work cnn-pipenv
   
   ```
- Now you should be inside the container, you can find the dataset you previously pointed out in / dataset in the current folder (before calling podman run) in / root / work

- To enter venv, simply invoke `pipenv shell`

- Okay, now just call the file with desired, example:

    ```shell
   python cnn_image_classification.py
   ```

## Tools

- [Tensorflow](https://www.tensorflow.org/):
- [Keras](https://www.tensorflow.org/api_docs/python/tf/keras?hl=pt-br):
- [Colab Notebooks](https://colab.research.google.com/):
- [Jupyter Notebooks](http://jupyter.org/):
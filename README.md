[![CircleCI](https://circleci.com/gh/kunvar13/KalU5.svg?style=svg)](https://circleci.com/gh/kunvar13/KalU5)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Setup the Environment

* `make setup` to create the virtual environment the n type `source ~/.devops/bin/activate to go in virtual environment
* Run `make install` to install the necessary dependencies

### To create docker image and upload in Docker hub

1. `make lint` for linting dockerfle and app.py
2. Standalone:  `python app.py`
3. To create Docker:  `./run_docker.sh`
4. Make prediction: `./make_prediction`
5. Upload image in Docker hub: `./upload_docker.sh`

### Kubernetes Steps
1. Install kubectl and minikube 
2. minikube start
3. Run Kubernetes:  `./run_kubernetes.sh`
4. kubectl get pods to check the status
5. Run Kubernetes:  `./run_kubernetes.sh
6. Make prediction: `./make_prediction`

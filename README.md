# Build a Jukebox Detection Model Using Keras
Jukebox detection with Keras and Convert it to CoreML.

## Build the Docker Image
docker build --file Dockerfile --tag tt-jukebox-detection-keras:latest --force-rm .

## Run the Container
docker run -d -p 6006:6006 -p 8888:8888 --name tt-jukebox-detection -v $(pwd):/notebooks tt-jukebox-detection-keras:latest

## Train the model
In your browser, access http://localhost:8888 and type 'demo' in the password box. Then start the 'Jukebox Recognition for CoreML' notebook, going through each step.

## Tensorboard

You will be able to visualize what your model is doing during training with Tensorboard.

Simply point your browser to http://localhost:6006 during training, and you should see graphs for the loss and cross-validation accuracy for each epoch.

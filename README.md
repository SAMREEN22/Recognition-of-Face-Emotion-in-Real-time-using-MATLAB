# Recognition-of-Face-Emotion-in-Real-time-using-MATLAB
Recognition of Face Emotion in Real-time using MATLAB

Real-time facial emotion recognition is a method for determining a person's feelings. The person's image is taken, and it is then compared to the images that are already in our database, to complete the task. This system is based on Support Vector Machines (SVM) and Linear Binary Patterns (LBP). Local Binary Pattern, often known as LBP, is a type of texture descriptor that takes the features from the image and extracts them. By comparing each pixel with its surrounding cells, it provides a local representation of the image and is composed of relative values. It is utilised in a range of recognition software applications, including face, gesture, and object recognition among others. One of the most well-liked supervised learning algorithms, Support Vector Machine or SVM, is used to solve Classification and Regression problems. By creating a hyperplane that divides these data, it organises observations. It is its potential to extract inherent qualities from datasets with greater dimensions. We took references from the Kaggle 2013 FER database to create our own database. Kaggle dataset is made up of 48x48 pixel grayscale portraits of people. We have 28,709 examples for training and 3,589 examples for testing. For creating our own dataset, we took 150 photos for each emotion and trained them further using a training model. Our system is based on a training set and a testing set. To create a training set, an image is fed into the machine, a face is detected, and the image is cropped. Using LBP, its features are extracted and then classified using the SVM algorithm. It is then trained using a learning model and stored on the device. Now for the testing set, whenever an image is taken from a camera, it uses the same steps for extracting its features and classifying it. The results are now obtained by comparing this image to the images kept in our training set.

![RESEARCh PAPER pdf and 1 more page - Personal - Microsoft​ Edge 31-05-2023 13_07_11](  https://github.com/SAMREEN22/Recognition-of-Face-Emotion-in-Real-time-using-MATLAB/assets/65328605/908a174c-0264-4c42-b8cd-f16035f7c3d3)

We created our own dataset with 150 snaps for each emotion. Further 
training and testing of the model are done on our own newly created dataset.
![RESEARCh PAPER pdf and 1 more page - Personal - Microsoft​ Edge 31-05-2023 12_59_58](https://github.com/SAMREEN22/Recognition-of-Face-Emotion-in-Real-time-using-MATLAB/assets/65328605/f115c89d-3fdf-4ea1-998b-eb9f21d08574)
![RESEARCh PAPER pdf and 1 more page - Personal - Microsoft​ Edge 31-05-2023 13_00_06](https://github.com/SAMREEN22/Recognition-of-Face-Emotion-in-Real-time-using-MATLAB/assets/65328605/fcc4c67a-a3a9-4156-a0a7-07a5e521d8d0)


Here is our Final Model Working Video:

https://github.com/SAMREEN22/Recognition-of-Face-Emotion-in-Real-time-using-MATLAB/assets/65328605/b42b5813-3e11-4d0f-b418-abd4b160d473


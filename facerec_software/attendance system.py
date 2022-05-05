# -*- coding: utf-8 -*-
"""
Created on Fri Mar  4 06:36:39 2022

@author: Ahmad
"""

import cv2
import numpy as np
import face_recognition
import os
from datetime import datetime
from base64 import b64decode, decodebytes
import pyrebase
import firebase_instance

user = ''
path = 'StudentImage/'
images = []
classNames = []
myList = os.listdir(path)


#Initialization and connecting to firebase
firebase = pyrebase.initialize_app(firebase_instance.firebaseConfig)
db= firebase.database()
auth = firebase.auth()

#LOgin 
email = input("Enter your email address: ")
password = input("Enter your password: ")
try:
    user = auth.sign_in_with_email_and_password(email,password)
    
    print('successfully signed in')
except:
    print('Invalid cridentials. try again')
    
token = auth.get_account_info(user['idToken'])
uid = token['users'][0]['localId']

   
#Database

college = input("Enter your college: ")
department = input("Enter your department: ")
level = input("Enter your level: ")

students = db.child("studentsDetail").child(uid).child('Engineering').child('Computer Engineering').child('400').get()  
#to get the students from the database into the system  
for student in students.each(): 
    ##print(student.val())
    fullname = student.val()['fullname']
    matNumber = student.val()['matriculation number']
    retrPicture = student.val()['picture']
    jpeg = b64decode(retrPicture)
        
    base64_image_bytes = retrPicture.encode('utf-8')
    decoded_image_data = decodebytes(base64_image_bytes)
    numpyarray = np.frombuffer(decoded_image_data, dtype=np.uint8)
    image = cv2.imdecode(numpyarray, cv2.IMREAD_COLOR)
    mat_converted = f'{matNumber}'.replace('/', '-')
    if not cv2.imwrite(f'{path}/{mat_converted}.jpg', image):
        raise Exception('could not write image')
    ##print(os.listdir(path))
    ##cv2.imshow(f'{matNumber}', image)
    ##image = cv2.imdecode(np.frombuffer(jpeg, dtype=np.uint8), cv2.IMREAD_COLOR)
    ##cv2.imwrite(f'{matNumber}.jpg', image)


def markAttendanceOnline(name, dateStrings):
    try:
        name_converted = f'{matNumber}'.replace('-', '/')
        print(name_converted)
        for person in students.each():
            if person.val()['matriculation number']== f'{name_converted}':
                db.child("studentsDetail").child(uid).child('Engineering').child('Computer Engineering').child('400').child(person.key()).child('attendance').push(dateStrings)
                print(f'{name_converted} ====> saved')
    except:
        print('unable to save')
            
    



for cl in myList:
    currentImage = cv2.imread(f'{path}/{cl}')
    images.append(currentImage)
    classNames.append(os.path.splitext(cl)[0])
    
def findEncoding(images):
    encodeList = []
    for img in images:
        img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        encode = face_recognition.face_encodings(img)[0]
        encodeList.append(encode)
    return encodeList

def markAttendance(name):
    with open('attendance_list.csv', 'r+') as f:
        myDataList = f.readlines()
        nameList = []
        for line in myDataList:
            entry = line.split(',')
            nameList.append(entry[0])
        if name not in nameList:
            now = datetime.now()
            dateStrings = now.strftime('%H:%M:%S')
            f.write(f'\n{name},{dateStrings}')
            markAttendanceOnline(name, dateStrings)
            


    

known_face_encodings_list = findEncoding(images)
print('Encoding Complete')

#Load the video to detect from webcam
stream_video = cv2.VideoCapture(0)

while True:
    #get the current frame from the video stream as an image
    ret,current_frame =stream_video.read()
    #resize the current frame to 1/4 to process faster
    current_frame_small = cv2.resize(current_frame, (0,0), fx=0.25, fy=0.25)
    current_frame_small = cv2.cvtColor(current_frame_small, cv2.COLOR_BGR2RGB)
    
    
    #detect all faces in the image
    #argument are image, no_oftimes_to_upsample, model
    all_face_locations = face_recognition.face_locations(current_frame_small, model="hog")
    #detect the face encodings for all the faces detected in current frame
    all_face_encodings = face_recognition.face_encodings(current_frame_small, all_face_locations)
    
    
    #looping through to get the faces locations and face encodings
    for current_face_location,current_face_encoding in zip(all_face_locations,all_face_encodings):
        #splitting the tupple to get the four position values of current face
        top_pos,right_pos,bottom_pos,left_pos = current_face_location
        #change the position magnitude to fit the actual size of video frame
        top_pos = top_pos * 4
        right_pos = right_pos * 4
        bottom_pos = bottom_pos * 4
        left_pos = left_pos * 4
        #find all the matches and get the list of matches
        all_matches = face_recognition.compare_faces(known_face_encodings_list, current_face_encoding)
        #get all face diatance
        face_distance = face_recognition.face_distance(known_face_encodings_list, current_face_encoding)
        
        matchIndex = np.argmin(face_distance)
        
        if all_matches[matchIndex]:
            name_of_person = classNames[matchIndex].upper()
        
        #draw a rectangle around the face detected
        cv2.rectangle(current_frame,(left_pos, top_pos), (right_pos, bottom_pos), (225,0,255), 2)
        
        #display the name of the person 
        font = cv2.FONT_HERSHEY_DUPLEX
        cv2.putText(current_frame, name_of_person, (left_pos,bottom_pos), font, 0.5, (255,255,255))
        
        #to mark attendance
        markAttendance(name_of_person)
        
    #to show the image
    cv2.imshow("Face identified ", current_frame)
    
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
    
#release the stream and cam
#close all opencv windowss open
stream_video.release()
cv2.destroyAllWindows()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
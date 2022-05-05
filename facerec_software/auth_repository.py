import cv2
import numpy as np
from base64 import b64decode, decodebytes
import pyrebase
import firebase_instance
import os


user = ''
image_path = 'StudentImage/'
##Initialization and connecting to firebase
firebase = pyrebase.initialize_app(firebase_instance.firebaseConfig)
db= firebase.database()
auth = firebase.auth()


##LOgin 
#email = input("Enter your email address: ")
#password = input("Enter your password: ")



try:
    user = auth.sign_in_with_email_and_password('ahmadolukotun@gmail.com', 'Shemalephotos@2000')
    
    print('successfully signed in')
except:
    print('Invalid cridentials. try again')
    
token = auth.get_account_info(user['idToken'])
print(token)
uid = token['users'][0]['localId']


#college = input("Enter your college: ")
#department = input("Enter your department: ")
#level = input("Enter your level: ")

    
##Database

students = db.child("studentsDetail").child(uid).child('Engineering').child('Computer Engineering').child('400').get()  
#to get the students from the database into the system  
#for student in students.each(): 
    ##print(student.val())
#    fullname = student.val()['fullname']
#    matNumber = student.val()['matriculation number']
#    retrPicture = student.val()['picture']
#    jpeg = b64decode(retrPicture)
#        
#    base64_image_bytes = retrPicture.encode('utf-8')
#    decoded_image_data = decodebytes(base64_image_bytes)
#    numpyarray = np.frombuffer(decoded_image_data, dtype=np.uint8)
#    image = cv2.imdecode(numpyarray, cv2.IMREAD_COLOR)
#    mat_converted = f'{matNumber}'.replace('/', '-')
#    if not cv2.imwrite(f'{image_path}/{mat_converted}.jpg', image):
#        raise Exception('could not write image')
#    print(os.listdir(image_path))
    ##cv2.imshow(f'{matNumber}', image)
    ##image = cv2.imdecode(np.frombuffer(jpeg, dtype=np.uint8), cv2.IMREAD_COLOR)
    ##cv2.imwrite(f'{matNumber}.jpg', image)



##to update attendance
#for person in students.each():
#    if person.val()['fullname']=='ahmad':
#        db.child("studentsDetail").child(uid).child('Engineering').child('Computer Engineering').child('400').child(person.key()).child('attendance').push('date17')       


##to read attendance
#attendance = db.child("studentsDetail").child(uid).child('Engineering').child('Computer Engineering').child('400').get()
#for person in attendance.each():
#    att = db.child("studentsDetail").child(uid).child('Engineering').child('Computer Engineering').child('400').child(person.key()).child('attendance').get()
#    b = att.val()
#    print(b)

        




















#base64_image_bytes = retrData.encode('utf-8')
#decoded_image_data = base64.decodebytes(base64_image_bytes)

##with open('decoded_image.jpg', 'wb')as file_to_save:
##    decoded_image_data = base64.decodebytes(base64_image_bytes)
##    file_to_save.write(decoded_image_data)

#numpyarray = np.frombuffer(decoded_image_data, dtype=np.uint8)

#image = cv2.imdecode(numpyarray, cv2.IMREAD_COLOR)
##cv2.imwrite('result.jpg', image)
#cv2.imshow("show face", image)
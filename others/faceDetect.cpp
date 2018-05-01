#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
 
#include <iostream>
#include <stdio.h>
 
using namespace std;
using namespace cv;

double* faceDetect(char fileName[]) 
{
    Mat image = imread(fileName, CV_LOAD_IMAGE_COLOR);  
 
    // Load Face cascade (.xml file)
    CascadeClassifier face_cascade;
    face_cascade.load( "/usr/local/Cellar/opencv/3.3.1_1/share/OpenCV/haarcascades/haarcascade_frontalface_alt2.xml" ); //IOS ?
    face_cascade.load( "/opt/opencv/data/haarcascades/haarcascade_frontalface_alt2.xml" );//ubuntu
 
    // Detect faces
    std::vector<Rect> faces;
    face_cascade.detectMultiScale( image, faces, 1.1, 2, 0|CV_HAAR_SCALE_IMAGE, Size(30, 30) );

    double* output = new double[1+4*faces.size()];
    output[0]=faces.size();//number of faces
    for( int i = 0; i < faces.size(); i++ )
    {
        output[4*i+1]=faces[i].y + faces[i].height*0.5;
        output[4*i+2]=faces[i].x + faces[i].width*0.5;
        output[4*i+3]=faces[i].height;
        output[4*i+4]=faces[i].width;
        // Point center( faces[i].x + faces[i].width*0.5, faces[i].y + faces[i].height*0.5 );
        // ellipse( image, center, Size( faces[i].width*0.5, faces[i].height*0.5), 0, 0, 360, Scalar( 255, 0, 255 ), 4, 8, 0 );
    }                  
    return output;   
}
int main()
{
   faceDetect("./demo/d.jpg");
}
// int main()
// {
//     char s[]="/Users/weimansun/Documents/1.jpg";
//     faceDetect(s);
// }

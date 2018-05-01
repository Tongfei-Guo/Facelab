//============================================================================
// Name        : load.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/opencv.hpp>
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
#include <string>
#include <stdio.h>
 
using namespace std;
using namespace cv;

using namespace cv;

using namespace std;
extern "C" double* load_cpp(char imageName[])
{
    Mat img = imread(imageName,CV_LOAD_IMAGE_COLOR);
    unsigned char* input = (unsigned char*)(img.data);
    double* output = new double[2+3*img.rows*img.cols];
    output[0]=img.rows;
    output[1]=img.cols;
    double r,g,b;
    int k = 2;
    for(int i = 0;i < img.rows;i++){
        for(int j = 0;j < img.cols;j++){
            b = input[img.step * i + j*img.channels()] ;
            output[k++]=b;
            g = input[img.step * i + j*img.channels() + 1];
            output[k++]=g;
            r = input[img.step * i + j*img.channels() + 2];
            output[k++]=r;
        }
    }
    return output;
}

extern "C" void save_cpp(double* input, char fileName[]) 
{
    int height = input[0];
    int width = input[1];
    double* data = new double[3*width*height];
    for(int i = 0; i < 3*width*height; i++) data[i]=input[i+2];
    Mat image = cv::Mat(height, width, CV_64FC3, data);
    imwrite(fileName,image);
    return;
}

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
// int main()
// {
//     Mat img = imread("/Users/weimansun/Documents/1.jpg",CV_LOAD_IMAGE_COLOR);
//     unsigned char* input = (unsigned char*)(img.data);
//     double* output = new double[2+3*img.rows*img.cols];
//     output[0]=img.cols;//width
//     output[1]=img.rows;//height
//     double r,g,b;
//     int k = 2;
//     for(int i = 0;i < img.rows;i++){
//         for(int j = 0;j < img.cols;j++){
//             b = input[img.step * i + j*img.channels()] ;
//             output[k++]=b;
//             g = input[img.step * i + j*img.channels() + 1];
//             output[k++]=g;
//             r = input[img.step * i + j*img.channels() + 2];
//             output[k++]=r;
//         }
//     }
//     int width = output[0];
//     int height = output[1];
//     double* data = new double[3*width*height];
//     for(int i = 0; i < 3*width*height; i++) data[i]=output[i+2];
//     Mat image = cv::Mat(height, width, CV_64FC3, data);
//     imwrite("/Users/weimansun/Documents/result.jpg",image);
// 	return 0;
// }


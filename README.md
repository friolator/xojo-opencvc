# Xojo-OpenCV-C

## OpenCV 4.5+ for Xojo, using the OpenCV-C Wrapper

### What is this? 
The Xojo programming environment (formerly RealBasic, then RealStudio), can only interface with OpenCV through dynamic libraries written in C. As OpenCV has moved away from providing a C API, glue such as OpenCVX that relied on that API, no longer works. [OpenCV-C](https://github.com/friolator/OpenCV-C) was developed to fill that gap. 

Xojo-OpenCV-C is a Xojo project that incorporates all of the work done to date on OpenCV-C, exposing all of its functionality as a convenient, easy to use set of classes that allow you to incorporate OpenCV into your project.

### Why do this? 
Aside from the computer vision and machine learning functionality of OpenCV, there are other reasons to consider using Xojo-OpenCV-C in your projects. If you're working with large files and need to do basic transforms or color space conversions, OpenCV is significantly faster than the built-in Xojo image processing tools, and even some plugins. 

For example, a simple image resize of a 14192 x 10640 BMP to 640x480, in both Xojo and OpenCV:

Execution Time| Function
------ | -------------
151ms  | Graphics.DrawPicture()
157ms  | ScaleImageAndMaskMBS()
151ms  | ScaleImageMBS()
18ms   | CVCresize()

This kind of speed allows for much more complex image processing than you could achieve with Xojo natively. 

### Caveats
OpenCV-C is a work in progress. You can read more about it on its Github page, but in a nutshell, it was commissioned by [Gamma Ray Digital](https://www.gammaraydigital.com), for use in an application being built by them. As such, the initial capabilities of OpenCV-C were limited primarily to the tools needed for this project. Most of the core OpenCV functionality is there, and it functions a little differently than what you may be used to if you work with OpenCV in, say, Python. 


## Installation

#### Mac
1. Download Xojo-OpenCV-C
2. Open the project in Xojo
3. Open your project
4. Copy/Paste the OpenCV module from Xojo-OpenCV-C to your project
5. Add a Build Copy operation in Xojo to copy the libOpenCVC.dylib file to your project's Framework folder. 

#### Windows
1. Download Xojo-OpenCV-C
2. Open the project in Xojo
3. Open your project
4. Copy/Paste the OpenCV module from Xojo-OpenCV-C to your project
5. Add a Build Copy operation in Xojo to copy the OpenCVC.dll file to your project's App Parent folder. 

#### Linux
TO DO



## Usage
TO DO




## About
Xojo-OpenCV-C is released under the Apache 2 license, the same as OpenCV itself.


### Contributors:
* [Antonio Rinaldi](https://github.com/Falcomedia)
* [Roberto Calvi](https://github.com/robertocalvi)
* [Perry Paolantonio](https://github.com/friolator)

### History
* 2021 June: Initial release, with code from OpenCV Core, ImgProc, ImgCodec, Stitching, ObjDetect, and Photo modules. 

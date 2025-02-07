# Xojo-OpenCV-C

## OpenCV 4.5+ for Xojo, using the OpenCV-C Wrapper

The Xojo programming environment (formerly RealBasic, then RealStudio), can only interface with OpenCV through dynamic libraries written in C. As OpenCV has moved away from providing a C API, glue such as [OpenCVX](https://github.com/sonots/opencvx) that relied on that API, no longer works. [OpenCV-C](https://github.com/friolator/OpenCV-C) was developed to fill that gap. 

Xojo-OpenCV-C is a Xojo project that provides access to all of the work done to date on OpenCV-C, exposing its functionality as a convenient, easy to use set of Xojo classes that allow you to incorporate OpenCV into your project, without having to worry about manually allocating and deallocating OpenCV objects such as mats, structs and vectors.

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
**In its initial release, this is not a full port of OpenCV.**

[OpenCV-C](https://github.com/friolator/OpenCV-C) is a work in progress. You can read more about it on its Github page, but in a nutshell, it was commissioned by [Gamma Ray Digital](https://www.gammaraydigital.com), for use in an application being built by them. The initial capabilities of OpenCV-C were limited primarily to the tools needed for that project. Most of the core OpenCV functionality is there, and it functions a little differently than what you may be used to if you work with OpenCV in, say, Python. 

OpenCV uses many overloaded C++ functions for convenience, something C does not support. As such, these are (for now, largely) left out of OpenCV-C. In some cases overloaded functions are made available to OpenCV-C. For example, cv::integral() has three variations. In OpenCV-C these are CVCintegral(), CVCintegral2(), and CVCintegral3(). More will come later.  

OpenCV-C and Xojo-OpenCV-C may not always be in sync. Most users should always use the libraries provided in this package, rather than compiling a new one from OpenCV-C. This will ensure that the Xojo code you're working with was tested and is known to work. 

### How do I use OpenCV in my project?
The basic idea with this Xojo project is to present the openCV functionality as a collection of classes and methods you can use in your project. All of the code lives inside an openCV module that you can drag into your own project. But we do recommend playing with the supplied application to get a sense of how it works, first. The OpenCV module contains basic classes for creating and manipulating Mats, the basic building block for openCV. It's beyond the scope of this document to explain how to use OpenCV itself, all the docs are available on the openCV web site. You shoud check to see if the function you need from OpenCV is in OpenCV-C first. OpenCV-C mirrors the structure of OpenCV, so if you're looking for a Core function, you just need to look in the OpenCV-C Core.h or Core.cpp files to see if it's implemented If it's not commented out, then it's there.

Xojo-OpenCVC is meant to provide examples of how to use the code. It assumes you have some familiarity with Xojo, and can navigate the IDE. Most code lives inside of buttons so you should open up a button to see how things are done. We will be adding inline documentation to the code over time, but it's a low priority. If you' want to help do that, let us know!

## Installation

#### Mac
1. Download Xojo-OpenCV-C
2. Unzip external/libOpenCVC.zip
4. Open the Xojo-OpenCVC project

#### Windows
1. Download Xojo-OpenCV-C
2. Unzip external/opencv_world452d.zip
4. Open the Xojo-OpenCVC project

#### Linux
TO DO



## Usage
TO DO
### OpenCV Functions Available
* Xojo Classes/Structures for common OpenCV objects
  * CVCFloatVector
  * CVCInputArray 
  * CVCIntVector
  * CVCMat
  * CVCMatVector
  * CVCMatRefVector
  * CVCPoint
  * CVCPoint2f
  * CVCRect
  * CVCRectVector
  * CVCScalar
  * CVCSize
  * CVCUCharVector
* core
  * CVCabsdiff
  * CVCadd
  * CVCaddWeighted
  * CVCbatchDistance
  * CVCbitwise_and
  * CVCbitwise_not
  * CVCbitwise_or
  * CVCbitwise_xor
  * CVCborderInterpolate
  * CVCcalcCovarMatrix
  * CVCcartToPolar
  * CVCcompare
  * CVCconvertScaleAbs
  * CVCconvertFp16
  * CVCcopyTo
  * CVCcountNonZero
  * CVCdct
  * CVCdeterminant
  * CVCdft
  * CVCeigen
  * CVCeigenNonSymmetric
  * CVCexp
  * CVCextractChannel
  * CVCdivide
  * CVCfindNonZero
  * CVCflip
  * CVCgemm
  * CVCgetOptimalDFTSize
  * CVCidct
  * CVCidft
  * CVCinRange
  * CVCinvert
  * CVClog
  * CVCLUT
  * CVCmagnitude
  * CVCMahalanobis
  * CVCmax
  * CVCmeanStdDev
  * CVCmerge
  * CVCmerge2
  * CVCmin
  * CVCminMaxIdx
  * CVCmixChannels
  * CVCmulSpectrums
  * CVCmultiply
  * CVCmulTransposed
  * CVCnorm
  * CVCPCAProject
  * CVCPCABackProject
  * CVCperspectiveTransform
  * CVCphase
  * CVCpow
  * CVCpolarToCart
  * CVCPSNR
  * CVCreduce
  * CVCrepeat
  * CVCrotate
  * CVCscaleAdd
  * CVCsetRNGSeed
  * CVCsolve
  * CVCsolveCubic
  * CVCsolvePoly
  * CVCsort
  * CVCsortIdx
  * CVCsplit
  * CVCsqrt
  * CVCsubtract
  * CVCSVDecomp
  * CVCSVBackSubst
  * CVCswap
  * CVCtranspose
  * CVCtransform
* imgcodecs
  * CVChaveImageReader
  * CVChaveImageWriter
  * CVCimdecode
  * CVCimencode
  * CVCimread
  * CVCimwrite
* imgproc
  * CVCaccumulate
  * CVCaccumulateProduct
  * CVCaccumulateSquare
  * CVCaccumulateWeighted
  * CVCadaptiveThreshold
  * CVCapplyColorMap
  * CVCapproxPolyDP
  * CVCarcLength
  * CVCarrowedLine
  * CVCbilateralFilter
  * CVCblendLinear
  * CVCblur
  * CVCboxFilter
  * CVCcreateHanningWindow
  * CVCcalcHist
  * CVCCanny
  * CVCcircle
  * CVCclipLine
  * CVCcompareHist
  * CVCconnectedComponents
  * CVCconnectedComponentsWithAlgorithm
  * CVCconnectedComponentsWithStats
  * CVCconnectedComponentsWithStatsWithAlgorithm
  * CVCcontourArea
  * CVCconvertMaps
  * CVCcornerEigenValsAndVecs
  * CVCcornerHarris
  * CVCcornerMinEigenVal
  * CVCcornerSubPix
  * CVCconvexHull
  * CVCconvexityDefects
  * CVCcvtColor
  * CVCcvtColorTwoPlane
  * CVCdemosaicing
  * CVCdilate
  * CVCdistanceTransform
  * CVCdistanceTransformWithLabels
  * CVCdrawMarker
  * CVCellipse
  * CVCEMD
  * CVCequalizeHist
  * CVCerode
  * CVCfilter2D
  * CVCfitLine
  * CVCGaussianBlur
  * CVCgetAffineTransform
  * CVCgetDerivKernels
  * CVCgetFontScaleFromHeight
  * CVCgetRectSubPix
  * CVCgetGaussianKernel
  * CVCgetGaborKernel
  * CVCgetPerspectiveTransform
  * CVCgetRotationMatrix2D
  * CVCgetStructuringElement
  * CVCgetTextSize
  * CVCgoodFeaturesToTrack
  * CVCgoodFeaturesToTrackWithQuality
  * CVCHoughCircles
  * CVCHoughLines
  * CVCHoughLinesP
  * CVCHoughLinesPointSet
  * CVCintegral
  * CVCintegral2
  * CVCintegral3
  * CVCinvertAffineTransform
  * CVCisContourConvex
  * CVCintersectConvexConvex
  * CVCLaplacian
  * CVCline
  * CVClinearPolar
  * CVClogPolar
  * CVCmatchTemplate
  * CVCminEnclosingCircle
  * CVCminEnclosingTriangle
  * CVCmatchShapes
  * CVCmorphologyDefaultBorderValue
  * CVCmedianBlur
  * CVCpreCornerDetect
  * CVCmorphologyEx
  * CVCpointPolygonTest
  * CVCputText
  * CVCpyrDown
  * CVCpyrUp
  * CVCrectangle
  * CVCrectangle2
  * CVCremap
  * CVCresize
  * CVCsepFilter2D
  * CVCScharr
  * CVCSobel
  * CVCspatialGradient
  * CVCsqrBoxFilter
  * CVCthreshold
  * CVCwarpAffine
  * CVCwarpPerspective
  * CVCwarpPolar
  * CVCwatershed
* objdetect
  * CVCCascadeClassifierDetectMultiScale
  * CVCCascadeClassifierFree
  * CVCCascadeClassifierLoad
* stitching
  * CVCStitcherCreate
  * CVCStitcherFree
  * CVCStitcherStitch
* photo
  * CVCcolorChange
  * CVCdecolor
  * CVCdenoise_TVL1
  * CVCdetailEnhance
  * CVCedgePreservingFilter
  * CVCfastNlMeansDenoising
  * CVCfastNlMeansDenoising2
  * CVCfastNlMeansDenoisingColored
  * CVCfastNlMeansDenoisingColoredMulti
  * CVCfastNlMeansDenoisingMulti
  * CVCfastNlMeansDenoisingMulti2
  * CVCilluminationChange
  * CVCinpaint
  * CVCpencilSketch
  * CVCseamlessClone
  * CVCstylization
  * CVCtextureFlattening



## About
Xojo-OpenCV-C is released under the Apache 2 license, the same as OpenCV itself.


### Contributors:
* [Antonio Rinaldi](https://github.com/Falcomedia)
* [Perry Paolantonio](https://github.com/friolator)

### History
* 2021 June: Initial release, with code from OpenCV Core, ImgProc, ImgCodec, Stitching, ObjDetect, and Photo modules. 
* 2022 June: Made repository public

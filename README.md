# Xojo-OpenCV-C

## OpenCV 4.5+ for Xojo, using the OpenCV-C Wrapper

The Xojo programming environment (formerly RealBasic, then RealStudio), can only interface with OpenCV through dynamic libraries written in C. As OpenCV has moved away from providing a C API, glue such as [OpenCVX](https://github.com/sonots/opencvx) that relied on that API, no longer works. [OpenCV-C](https://github.com/friolator/OpenCV-C) was developed to fill that gap. 

Xojo-OpenCV-C is a Xojo project that incorporates all of the work done to date on OpenCV-C, exposing all of its functionality as a convenient, easy to use set of classes that allow you to incorporate OpenCV into your project, without having to worry about manually allocating and deallocating OpenCV objects such as mats, structs and vectors.

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

OpenCV uses many overloaded functions for convenience, something C does not support. As such, these are left out of OpenCV-C.

OpenCV-C and Xojo-OpenCV-C may not always be in sync. Most users should always use the libraries provided in this package, rather than compiling a new one from OpenCV-C. This will ensure that the Xojo code you're working with was tested and is known to work. 


## Installation

#### Mac
1. Download Xojo-OpenCV-C
2. Open the project in Xojo
3. Open your project
4. Copy/Paste the OpenCV module from Xojo-OpenCV-C to your project
5. Add a Build Copy operation in Xojo to copy the external/libOpenCVC.dylib file to your project's Framework folder.

#### Windows
1. Download Xojo-OpenCV-C
3. Open the project in Xojo
4. Open your project
5. Copy/Paste the OpenCV module from Xojo-OpenCV-C to your project
6. Add a Build Copy operation in Xojo to copy the OpenCVC.dll file to your project's App Parent folder. 

#### Linux
TO DO



## Usage
TO DO
### OpenCV Functions Available
* Xojo Classes/Structures for common OpenCV objects
  * CVCMat
  * CVCRect
  * CVCMatVector
  * CVCPoint
  * CVCPoint2f
  * CVCScalar
  * CVCSize
  * CVCRectVector
  * CVCIntVector
  * CVCFloatVector
  * CVCUCharVector
* core
  * CVCswap
  * CVCborderInterpolate
  * CVCadd
  * CVCsubtract
  * CVCmultiply
  * CVCdivide
  * CVCscaleAdd
  * CVCaddWeighted
  * CVCconvertScaleAbs
  * CVCconvertFp16
  * CVCLUT
  * CVCcountNonZero
  * CVCfindNonZero
  * CVCmeanStdDev
  * CVCnorm
  * CVCPSNR
  * CVCbatchDistance
  * CVCminMaxIdx
  * CVCreduce
  * CVCmerge
  * CVCsplit
  * CVCmixChannels
  * CVCextractChannel
  * CVCflip
  * CVCrotate
  * CVCrepeat
  * CVCbitwise_and
  * CVCbitwise_or
  * CVCbitwise_xor
  * CVCbitwise_not
  * CVCabsdiff
  * CVCcopyTo
  * CVCinRange
  * CVCcompare
  * CVCmin
  * CVCmax
  * CVCsqrt
  * CVCpow
  * CVCexp
  * CVClog
  * CVCpolarToCart
  * CVCcartToPolar
  * CVCphase
  * CVCmagnitude
  * CVCgemm
  * CVCmulTransposed
  * CVCtranspose
  * CVCtransform
  * CVCperspectiveTransform
  * CVCdeterminant
  * CVCinvert
  * CVCsolve
  * CVCsort
  * CVCsortIdx
  * CVCsolveCubic
  * CVCsolvePoly
  * CVCeigen
  * CVCeigenNonSymmetric
  * CVCcalcCovarMatrix
  * CVCPCAProject
  * CVCPCABackProject
  * CVCSVDecomp
  * CVCSVBackSubst
  * CVCMahalanobis
  * CVCdft
  * CVCidft
  * CVCdct
  * CVCidct
  * CVCmulSpectrums
  * CVCgetOptimalDFTSize
  * CVCsetRNGSeed
* imgcodecs
  * CVCimread
  * CVCimwrite
  * CVCimdecode
  * CVCimencode
  * CVChaveImageReader
  * CVChaveImageWriter
* imgproc
  * CVCgetGaussianKernel
  * CVCgetDerivKernels
  * CVCgetGaborKernel
  * CVCmorphologyDefaultBorderValue
  * CVCgetStructuringElement
  * CVCmedianBlur
  * CVCGaussianBlur
  * CVCbilateralFilter
  * CVCboxFilter
  * CVCsqrBoxFilter
  * CVCblur
  * CVCfilter2D
  * CVCsepFilter2D
  * CVCSobel
  * CVCspatialGradient
  * CVCScharr
  * CVCLaplacian
  * CVCCanny
  * CVCcornerMinEigenVal
  * CVCcornerHarris
  * CVCcornerEigenValsAndVecs
  * CVCpreCornerDetect
  * CVCcornerSubPix
  * CVCgoodFeaturesToTrack
  * CVCgoodFeaturesToTrackWithQuality
  * CVCHoughLines
  * CVCHoughLinesP
  * CVCHoughLinesPointSet
  * CVCHoughCircles
  * CVCerode
  * CVCdilate
  * CVCmorphologyEx
  * CVCresize
  * CVCwarpAffine
  * CVCwarpPerspective
  * CVCremap
  * CVCconvertMaps
  * CVCgetRotationMatrix2D
  * CVCinvertAffineTransform
  * CVCgetPerspectiveTransform
  * CVCgetAffineTransform
  * CVCgetRectSubPix
  * CVClogPolar
  * CVClinearPolar
  * CVCwarpPolar
  * CVCintegral
  * CVCintegral2
  * CVCintegral3
  * CVCaccumulate
  * CVCaccumulateSquare
  * CVCaccumulateProduct
  * CVCaccumulateWeighted
  * CVCcreateHanningWindow
  * CVCthreshold
  * CVCadaptiveThreshold
  * CVCpyrDown
  * CVCpyrUp
  * CVCcalcHist
  * CVCcompareHist
  * CVCequalizeHist
  * CVCEMD
  * CVCwatershed
  * CVCdistanceTransformWithLabels
  * CVCdistanceTransform
  * CVCblendLinear
  * CVCcvtColor
  * CVCcvtColorTwoPlane
  * CVCdemosaicing
  * CVCmatchTemplate
  * CVCconnectedComponentsWithAlgorithm
  * CVCconnectedComponents
  * CVCconnectedComponentsWithStatsWithAlgorithm
  * CVCconnectedComponentsWithStats
  * CVCapproxPolyDP
  * CVCarcLength
  * CVCcontourArea
  * CVCminEnclosingCircle
  * CVCminEnclosingTriangle
  * CVCmatchShapes
  * CVCconvexHull
  * CVCconvexityDefects
  * CVCisContourConvex
  * CVCintersectConvexConvex
  * CVCfitLine
  * CVCpointPolygonTest
  * CVCapplyColorMap
  * CVCline
  * CVCarrowedLine
  * CVCrectangle
  * CVCrectangle2
  * CVCcircle
  * CVCellipse
  * CVCdrawMarker
  * CVCclipLine
  * CVCputText
  * CVCgetTextSize
  * CVCgetFontScaleFromHeight
* objdetect
  * CVCCascadeClassifierFree
  * CVCCascadeClassifierLoad
  * CVCCascadeClassifierDetectMultiScale
* stitching
  * CVCStitcherCreate
  * CVCStitcherFree
  * CVCStitcherStitch
* photo
  * CVCinpaint
  * CVCfastNlMeansDenoising
  * CVCfastNlMeansDenoising2
  * CVCfastNlMeansDenoisingColored
  * CVCfastNlMeansDenoisingMulti
  * CVCfastNlMeansDenoisingMulti2
  * CVCfastNlMeansDenoisingColoredMulti
  * CVCdenoise_TVL1
  * CVCdecolor
  * CVCseamlessClone
  * CVCcolorChange
  * CVCilluminationChange
  * CVCtextureFlattening
  * CVCedgePreservingFilter
  * CVCdetailEnhance
  * CVCpencilSketch
  * CVCstylization



## About
Xojo-OpenCV-C is released under the Apache 2 license, the same as OpenCV itself.


### Contributors:
* [Antonio Rinaldi](https://github.com/Falcomedia)
* [Roberto Calvi](https://github.com/robertocalvi)
* [Perry Paolantonio](https://github.com/friolator)

### History
* 2021 June: Initial release, with code from OpenCV Core, ImgProc, ImgCodec, Stitching, ObjDetect, and Photo modules. 

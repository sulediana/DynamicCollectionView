#Dynamic Collection View
The sample application is based on WWDC's presentations of Dynamics and Collection Views.

It creates UIKitAttachmentBehaviors for each UICollectionViewLayoutAttributes and adds them to the DynamicAnimator.

Scrolling Up

![ScrollUp](http://i40.tinypic.com/2aeumnd.png)

Scrolling Down

![ScrollDown](http://i44.tinypic.com/do01s1.png)

#Requirements

Xcode 5

iOS 7

ARC

#Summary

It's an iPhone app using Storyboards and ARC and targeting iOS 7.


#Vertical Layout

A standard UICollectionViewFlowLayout-derived layout. Demonstrates a single column vertical layout and use of the dynamic animator to update all springs behaviors as the layout gets invalidated for bounds change.

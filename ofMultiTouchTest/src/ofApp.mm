#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    ofRegisterTouchEvents(this);
    ofxAccelerometer.setup();
    ofxiPhoneAlerts.addListener(this);
    
    ofBackground(0, 0, 0);
    ofEnableAlphaBlending();
    ofSetCircleResolution(128);
    ofSetFrameRate(30);
    
    for (int i = 0; i < 5; i++) {
        touchLoc[i].set(-100, -100);
    }
}

//--------------------------------------------------------------
void ofApp::update(){
    for (int i = 0; i < 5; i++) {
        if (circleSize[i] > 0 && circleSize[i] < ofGetHeight()) {
            circleSize[i] += 3;
        } else {
            circleSize[i] = 0;
        }
    }
}

//--------------------------------------------------------------
void ofApp::draw(){
	for (int i = 0; i < 5; i++) {
        if (circleSize[i] > 0 && circleSize[i] < ofGetHeight()) {
            ofSetColor(31, 127, 255, 100);
            ofCircle(touchLoc[i].x, touchLoc[i].y, circleSize[i]);
        }
        
        ofSetColor(255, 255, 255);
        ofDrawBitmapString("touch: "
                           + ofToString(i, 0)
                           + " = ("
                           + ofToString(touchLoc[i].x, 0)
                           + ", "
                           + ofToString(touchLoc[i].y, 0)
                           + ")", 2, 12 * i + 12);
    }
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    touchLoc[touch.id].set(touch.x, touch.y);
    circleSize[touch.id] = 1;
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    touchLoc[touch.id].set(touch.x, touch.y);
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

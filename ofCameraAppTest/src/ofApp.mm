#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    ofRegisterTouchEvents(this);
    ofxAccelerometer.setup();
    ofxiOSAlerts.addListener(this);
    ofEnableSmoothing();
    ofSetCircleResolution(64);
    ofEnableAlphaBlending();
    
    camera = NULL;
}

//--------------------------------------------------------------
void ofApp::update(){
    if (camera) {
        if (camera->imageUpdated) {
            int cameraW = camera->width;
            int cameraH = camera->height;
            unsigned const char * cameraPixels = camera->pixels;
            
            photo.setFromPixels(cameraPixels, cameraW, cameraH, OF_IMAGE_COLOR_ALPHA);
            
            camera->close();
            delete camera;
            camera = NULL;
        }
    }
}

//--------------------------------------------------------------
void ofApp::draw(){
    photo.draw(0, 0);
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){
    if (!camera) {
        camera = new ofxiOSImagePicker();
        camera->setMaxDimension(MAX(ofGetWidth(), ofGetHeight()));
        camera->openCamera();
    }
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


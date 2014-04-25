#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetFrameRate(60);
    
    ofNoFill();
    ofEnableAlphaBlending();
    ofEnableSmoothing();
    ofSetCircleResolution(256);
    ofSetColor(0, 0, 255, 127);
    radius = 80;
    maxSpeed = 0.25;
    maxSize = 80;
    for (int i = 0; i < NUM; i++) {
        angle[i] = 0;
    }
}

//--------------------------------------------------------------
void ofApp::update(){
    for (int i = 0; i < NUM; i++) {
        float thisSpeed = (maxSpeed / NUM) * i;
        pos[i].x = ofGetWidth() / 2 + (radius * sin(angle[i] * PI / 180.0));
        pos[i].y = ofGetHeight() / 2 + (radius * cos(angle[i] * PI / 180.0));
        angle[i] += thisSpeed;
    }
}

//--------------------------------------------------------------
void ofApp::draw(){
    for (int i = 0; i < NUM; i++) {
        float thisSize = (maxSize / NUM) * i;
        ofCircle(pos[i].x, pos[i].y, thisSize);
    }
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){
    for (int i = 0; i < NUM; i++) {
        angle[i] += i * touch.y / 100.0;
    }
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


#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    ofSetFrameRate(60);
    
    ofSetCircleResolution(128);
    ofSetColor(31, 127, 255);
}

//--------------------------------------------------------------
void ofApp::update(){
    for (int i = 0; i < LENGTH; i++) {
        pos[LENGTH-i].x = pos[LENGTH-i-1].x;
        pos[LENGTH-i].y = pos[LENGTH-i-1].y;
    }
    
    pos[0].x = mouseX;
    pos[0].y = mouseY;
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofFill();
	ofSetColor(31, 63, 255);
    ofCircle(pos[LENGTH-1].x, pos[LENGTH-1].y, 40);
    
    ofNoFill();
    float size_div = MAX_SIZE / NUM;
    for (int i = 0; i < NUM; i++) {
        ofCircle(pos[i*DELAY].x, pos[i*DELAY].y, size_div*(i+1));
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


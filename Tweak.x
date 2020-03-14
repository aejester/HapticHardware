#include <AudioToolbox/AudioServices.h>
#include <Cephei/HBPreferences.h>
#import <UIKit/UIKit.h>

// Variable
static BOOL isSinglePressEnabled;
static BOOL isDoublePressEnabled;
static BOOL isTriplePressEnabled;
static BOOL isQuadPressEnabled;
static BOOL isIncreaseVolumeEnabled;
static BOOL isDecreaseVolumeEnabled;

// Declare preferences
HBPreferences *preferences;



%hook SBLockHardwareButton

-(void)singlePress:(id)arg1 {
	%orig;

	if (isSinglePressEnabled) {
		AudioServicesPlaySystemSound(1521);
	}
}

-(void)doublePress:(id)arg1 {
	%orig;

	if (isDoublePressEnabled) {
		AudioServicesPlaySystemSound(1520);
	}
}

-(void)triplePress:(id) arg1 {
	%orig;

	if (isTriplePressEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}

-(void)quadruplePress:(id) arg1 {
	%orig;

	if (isQuadPressEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}

%end

%hook SBVolumeControl

-(void)increaseVolume {
	%orig;

	if (isIncreaseVolumeEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}

-(void)decreaseVolume {
	%orig;

	if (isDecreaseVolumeEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}

%end



%ctor {

	preferences = [[HBPreferences alloc] initWithIdentifier:@"com.aejester.hapticprefs"];

	[preferences registerBool:&isSinglePressEnabled default:NO forKey:@"isSinglePressEnabled"];
	[preferences registerBool:&isDoublePressEnabled default:NO forKey:@"isDoublePressEnabled"];
	[preferences registerBool:&isTriplePressEnabled default:NO forKey:@"isTriplePressEnabled"];
	[preferences registerBool:&isQuadPressEnabled default:NO forKey:@"isQuadPressEnabled"];
	[preferences registerBool:&isIncreaseVolumeEnabled default:NO forKey:@"isIncreaseVolEnabled"];
	[preferences registerBool:&isDecreaseVolumeEnabled default:NO forKey:@"isDecreaseVolEnabled"];
}

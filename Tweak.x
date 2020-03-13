#include <AudioToolbox/AudioServices.h>
#include <Cephei/HBPreferences.h>


HBPreferences *preferences;
BOOL isSinglePressEnabled;
BOOL isDoublePressEnabled;
BOOL isTriplePressEnabled;
BOOL isQuadPressEnabled;
BOOL isIncreaseVolumeEnabled;
BOOL isDecreaseVolumeEnabled;

%ctor {

	preferences = [[HBPreferences alloc] initWithIdentifier:@"com.aejester.haptichardware"];
	[preferences registerDefaults:@{
		@"SinglePressEnabled": @YES,
		@"DoublePressEnabled": @YES,
		@"TriplePressEnabled": @YES,
		@"QuadPressEnabled": @YES,
		@"IncreaseVolEnabled": @YES,
		@"DecreaseVolEnabled": @YES
	}];

	[preferences registerBool:&isSinglePressEnabled default:YES forKey:@"SinglePressEnabled"];
	[preferences registerBool:&isDoublePressEnabled default:YES forKey:@"DoublePressEnabled"];
	[preferences registerBool:&isTriplePressEnabled default:YES forKey:@"TriplePressEnabled"];
	[preferences registerBool:&isQuadPressEnabled default:YES forKey:@"QuadPressEnabled"];
	[preferences registerBool:&isIncreaseVolumeEnabled default:YES forKey:@"IncreaseVolEnabled"];
	[preferences registerBool:&isDecreaseVolumeEnabled default:YES forKey:@"DecreaseVolEnabled"];
}


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

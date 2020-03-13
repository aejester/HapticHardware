#line 1 "Tweak.x"
#include <AudioToolbox/AudioServices.h>
#include <Cephei/HBPreferences.h>


HBPreferences *preferences;
BOOL isSinglePressEnabled;
BOOL isDoublePressEnabled;
BOOL isTriplePressEnabled;
BOOL isQuadPressEnabled;
BOOL isIncreaseVolumeEnabled;
BOOL isDecreaseVolumeEnabled;

static __attribute__((constructor)) void _logosLocalCtor_ee39cf58(int __unused argc, char __unused **argv, char __unused **envp) {

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



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBVolumeControl; @class SBLockHardwareButton; 
static void (*_logos_orig$_ungrouped$SBLockHardwareButton$singlePress$)(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBLockHardwareButton$singlePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBLockHardwareButton$doublePress$)(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBLockHardwareButton$doublePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBLockHardwareButton$triplePress$)(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBLockHardwareButton$triplePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBLockHardwareButton$quadruplePress$)(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBLockHardwareButton$quadruplePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBVolumeControl$increaseVolume)(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBVolumeControl$increaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBVolumeControl$decreaseVolume)(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBVolumeControl$decreaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); 

#line 34 "Tweak.x"


static void _logos_method$_ungrouped$SBLockHardwareButton$singlePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	_logos_orig$_ungrouped$SBLockHardwareButton$singlePress$(self, _cmd, arg1);
	
	if (isSinglePressEnabled) {
		AudioServicesPlaySystemSound(1521);
	}
}

static void _logos_method$_ungrouped$SBLockHardwareButton$doublePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	_logos_orig$_ungrouped$SBLockHardwareButton$doublePress$(self, _cmd, arg1);
	
	if (isDoublePressEnabled) {
		AudioServicesPlaySystemSound(1520);
	}
}

static void _logos_method$_ungrouped$SBLockHardwareButton$triplePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	_logos_orig$_ungrouped$SBLockHardwareButton$triplePress$(self, _cmd, arg1);
	
	if (isTriplePressEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}

static void _logos_method$_ungrouped$SBLockHardwareButton$quadruplePress$(_LOGOS_SELF_TYPE_NORMAL SBLockHardwareButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	_logos_orig$_ungrouped$SBLockHardwareButton$quadruplePress$(self, _cmd, arg1);
	
	if (isQuadPressEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}





static void _logos_method$_ungrouped$SBVolumeControl$increaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$SBVolumeControl$increaseVolume(self, _cmd);
	
	if (isIncreaseVolumeEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}

static void _logos_method$_ungrouped$SBVolumeControl$decreaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$SBVolumeControl$decreaseVolume(self, _cmd);
	
	if (isDecreaseVolumeEnabled) {
		AudioServicesPlaySystemSound(1519);
	}
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockHardwareButton = objc_getClass("SBLockHardwareButton"); MSHookMessageEx(_logos_class$_ungrouped$SBLockHardwareButton, @selector(singlePress:), (IMP)&_logos_method$_ungrouped$SBLockHardwareButton$singlePress$, (IMP*)&_logos_orig$_ungrouped$SBLockHardwareButton$singlePress$);MSHookMessageEx(_logos_class$_ungrouped$SBLockHardwareButton, @selector(doublePress:), (IMP)&_logos_method$_ungrouped$SBLockHardwareButton$doublePress$, (IMP*)&_logos_orig$_ungrouped$SBLockHardwareButton$doublePress$);MSHookMessageEx(_logos_class$_ungrouped$SBLockHardwareButton, @selector(triplePress:), (IMP)&_logos_method$_ungrouped$SBLockHardwareButton$triplePress$, (IMP*)&_logos_orig$_ungrouped$SBLockHardwareButton$triplePress$);MSHookMessageEx(_logos_class$_ungrouped$SBLockHardwareButton, @selector(quadruplePress:), (IMP)&_logos_method$_ungrouped$SBLockHardwareButton$quadruplePress$, (IMP*)&_logos_orig$_ungrouped$SBLockHardwareButton$quadruplePress$);Class _logos_class$_ungrouped$SBVolumeControl = objc_getClass("SBVolumeControl"); MSHookMessageEx(_logos_class$_ungrouped$SBVolumeControl, @selector(increaseVolume), (IMP)&_logos_method$_ungrouped$SBVolumeControl$increaseVolume, (IMP*)&_logos_orig$_ungrouped$SBVolumeControl$increaseVolume);MSHookMessageEx(_logos_class$_ungrouped$SBVolumeControl, @selector(decreaseVolume), (IMP)&_logos_method$_ungrouped$SBVolumeControl$decreaseVolume, (IMP*)&_logos_orig$_ungrouped$SBVolumeControl$decreaseVolume);} }
#line 89 "Tweak.x"

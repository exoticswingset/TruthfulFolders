%hook SBIconBlurryBackgroundView
-(BOOL)isBlurring {
return NO;
}
%end
 %hook SBFloatyFolderView
 -(void)setBackgroundAlpha:(CGFloat)arg1 {
   %orig(0.0);
 }
 %end

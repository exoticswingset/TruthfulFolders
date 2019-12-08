%hook SBIconBlurryBackgroundView

- (BOOL)isBlurring {
  return NO;
}

%end

%hook SBFloatyFolderView

- (void)setBackgroundAlpha:(CGFloat)arg1 {
  %orig(0.0);
}

%end

@interface SBFolderIconImageView : UIView 
@property (nonatomic, retain) UIView *backgroundView;
@end

%hook SBFolderIconImageView 

- (void)layoutSubviews {
  %orig;
  self.backgroundView.alpha = 0;
  self.backgroundView.hidden = 1;
}

%end
*ECS-Data
setOrtho: aRectangle near: near far: far

	self
		a11: 2.0 / (aRectangle right - 1.0);
		a12: 0;
		a13: 0;
		a14: 0;
		
		a21: 0;
		a22: 2.0 / aRectangle height;
		a23: 0;
		a24: 0;
		
		a31: 0;
		a32: 0;
		a33: -2.0 / (far - near);
		a34: 0;
		
		a41: (aRectangle right + aRectangle left) negated / (aRectangle right - aRectangle left);
		a42: (aRectangle top + aRectangle bottom) negated / (aRectangle top - aRectangle bottom);
		a43: (far + near) negated / (far - near);
		a44: 1
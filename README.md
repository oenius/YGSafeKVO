# YGSafeKVO

YGKVO is a safe kvo, which could let kvo more stable. It written in Objective-c, based on runtime.

Situation
-----

We may have the bad logic like this, somethings.

```objective-c
  [self addObserver:self forKeyPath:@"care" options:NSKeyValueObservingOptionNew context:nil];
  
  self.care = 1;
  
  [self removeObserver:self forKeyPath:@"care"];
  [self removeObserver:self forKeyPath:@"care"];
  [self removeObserver:self forKeyPath:@"care"];

```

Opts!!!!!
Error & Crash

YGKVO WAY
-----

All need is to 

#import "NSObject+YGExtra.h"

```objective-c
  [self yg_addObserver:self forKeyPath:@"care" options:NSKeyValueObservingOptionNew context:nil];
  
  self.care = 1;
  
  [self yg_removeObserver:self forKeyPath:@"care"];
  [self yg_removeObserver:self forKeyPath:@"care"];
  [self yg_removeObserver:self forKeyPath:@"care"];

```

OK, All is well, It's Safe logic!!!

License
-------
	Copyright 2015 Oenius Jou
	
	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
	    http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.

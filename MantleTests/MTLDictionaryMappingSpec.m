//
//  MTLDictionaryMappingSpec.m
//  Mantle
//
//  Created by Robert Böhnke on 10/23/13.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

@import Quick;
@import Nimble;
#import "MTLTestModel.h"

#import "NSDictionary+MTLMappingAdditions.h"

QuickSpecBegin(MTLDictionaryMappingAdditions)

it(@"should return a mapping", ^{
	NSDictionary *mapping = @{
		@"name": @"name",
		@"count": @"count",
		@"nestedName": @"nestedName",
		@"weakModel": @"weakModel"
	};

	expect([NSDictionary mtl_identityPropertyMapWithModel:MTLTestModel.class]).to(equal(mapping));
});

QuickSpecEnd

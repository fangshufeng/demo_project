//
//  fake_objc.h
//  MethodCache
//
//  Created by fangshufeng on 2018/12/21.
//  Copyright © 2018 fangshufeng. All rights reserved.
//

#ifndef fake_objc_h
#define fake_objc_h

#if __LP64__
typedef uint32_t mask_t;  // x86_64 & arm64 asm are less efficient with 16-bits
#else
typedef uint16_t mask_t;
#endif
typedef uintptr_t cache_key_t;

struct bucket_t {
    cache_key_t _key;
    IMP _imp;
};

struct cache_t {
    struct bucket_t *_buckets;
    mask_t _mask;
    mask_t _occupied;
    
};

struct class_data_bits_t {
    uintptr_t bits;
};

struct fake_objc_object {
    void * isa;
};

struct fake_objc_class: fake_objc_object  {
    Class superclass;
    cache_t cache;             // formerly cache pointer and vtable
    class_data_bits_t bits;    // class_rw_t * plus custom rr/alloc flags
    
};

#endif /* fake_objc_h */

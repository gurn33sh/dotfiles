export RUBY_HEAP_INIT_SLOTS=1000000
# initial number of slots on the heap (default: 10000)

export RUBY_GC_HEAP_FREE_SLOTS=600000
# minimum free slots reserved for sweep re-use (4096)

export RUBY_GC_HEAP_SLOTS_GROWTH_FACTOR=1.25
# factor used to grow the heap (1.8x)

export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_GC_HEAP_FREE_MIN=500000

export RUBY_OLDGC_MALLOC_LIMIT=1000000000
export RUBY_OLDGC_HEAP_FREE_MIN=500000


export RUBY_HEAP_FREE_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000

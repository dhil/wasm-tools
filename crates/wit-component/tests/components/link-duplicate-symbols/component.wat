(component
  (type (;0;)
    (instance
      (type (;0;) (func (param "v" s32) (result s32)))
      (export (;0;) "foo" (func (type 0)))
    )
  )
  (import "test:test/test" (instance (;0;) (type 0)))
  (core module (;0;)
    (type (;0;) (func (param i32) (result i32)))
    (func (;0;) (type 0) (param i32) (result i32)
      local.get 0
      i32.const 1
      call_indirect (type 0)
    )
    (table (;0;) 2 funcref)
    (memory (;0;) 17)
    (global (;0;) (mut i32) i32.const 1048576)
    (global (;1;) i32 i32.const 1048592)
    (global (;2;) i32 i32.const 1)
    (global (;3;) i32 i32.const 1048592)
    (global (;4;) i32 i32.const 1)
    (global (;5;) (mut i32) i32.const 1048592)
    (global (;6;) (mut i32) i32.const 1114112)
    (export "__stack_pointer" (global 0))
    (export "bar:memory_base" (global 1))
    (export "bar:table_base" (global 2))
    (export "foo:memory_base" (global 3))
    (export "foo:table_base" (global 4))
    (export "__heap_base" (global 5))
    (export "__heap_end" (global 6))
    (export "foo" (func 0))
    (export "__indirect_function_table" (table 0))
    (export "memory" (memory 0))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core module (;1;)
    (@dylink.0
      (mem-info (memory 0 4))
      (needed "foo")
    )
    (type (;0;) (func (param i32) (result i32)))
    (import "env" "foo" (func $import_foo (;0;) (type 0)))
    (func $bar (;1;) (type 0) (param i32) (result i32)
      unreachable
    )
    (export "bar" (func $bar))
    (export "foo" (func $bar))
  )
  (core module (;2;)
    (@dylink.0
      (mem-info (memory 0 4))
      (needed "bar")
    )
    (type (;0;) (func (param i32) (result i32)))
    (import "test:test/test" "foo" (func $import_foo (;0;) (type 0)))
    (import "env" "foo" (func $import_foo2 (;1;) (type 0)))
    (import "env" "bar" (func $import_bar (;2;) (type 0)))
    (func $foo (;3;) (type 0) (param i32) (result i32)
      unreachable
    )
    (export "test:test/test#foo" (func $foo))
    (export "foo" (func $foo))
  )
  (core module (;3;)
    (type (;0;) (func))
    (type (;1;) (func (param i32)))
    (type (;2;) (func (param i32) (result i32)))
    (import "env" "memory" (memory (;0;) 0))
    (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
    (import "bar" "foo" (func (;0;) (type 2)))
    (func (;1;) (type 0))
    (start 1)
    (elem (;0;) (i32.const 1) func)
    (elem (;1;) (i32.const 1) func 0)
    (data (;0;) (i32.const 1048576) "\00\00\00\00\00\00\10\00")
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core instance (;0;) (instantiate 0))
  (alias core export 0 "memory" (core memory (;0;)))
  (alias core export 0 "__heap_base" (core global (;0;)))
  (alias core export 0 "__heap_end" (core global (;1;)))
  (core instance (;1;)
    (export "__heap_base" (global 0))
    (export "__heap_end" (global 1))
  )
  (core instance (;2;))
  (alias core export 0 "memory" (core memory (;1;)))
  (alias core export 0 "__indirect_function_table" (core table (;0;)))
  (alias core export 0 "__stack_pointer" (core global (;2;)))
  (alias core export 0 "bar:memory_base" (core global (;3;)))
  (alias core export 0 "bar:table_base" (core global (;4;)))
  (alias core export 0 "foo" (core func (;0;)))
  (core instance (;3;)
    (export "memory" (memory 1))
    (export "__indirect_function_table" (table 0))
    (export "__stack_pointer" (global 2))
    (export "__memory_base" (global 3))
    (export "__table_base" (global 4))
    (export "foo" (func 0))
  )
  (core instance (;4;) (instantiate 1
      (with "GOT.mem" (instance 1))
      (with "GOT.func" (instance 2))
      (with "env" (instance 3))
    )
  )
  (alias core export 0 "__heap_base" (core global (;5;)))
  (alias core export 0 "__heap_end" (core global (;6;)))
  (core instance (;5;)
    (export "__heap_base" (global 5))
    (export "__heap_end" (global 6))
  )
  (core instance (;6;))
  (alias core export 0 "memory" (core memory (;2;)))
  (alias core export 0 "__indirect_function_table" (core table (;1;)))
  (alias core export 0 "__stack_pointer" (core global (;7;)))
  (alias core export 0 "foo:memory_base" (core global (;8;)))
  (alias core export 0 "foo:table_base" (core global (;9;)))
  (alias core export 4 "bar" (core func (;1;)))
  (alias core export 4 "foo" (core func (;2;)))
  (core instance (;7;)
    (export "memory" (memory 2))
    (export "__indirect_function_table" (table 1))
    (export "__stack_pointer" (global 7))
    (export "__memory_base" (global 8))
    (export "__table_base" (global 9))
    (export "bar" (func 1))
    (export "foo" (func 2))
  )
  (alias export 0 "foo" (func (;0;)))
  (core func (;3;) (canon lower (func 0)))
  (core instance (;8;)
    (export "foo" (func 3))
  )
  (core instance (;9;) (instantiate 2
      (with "GOT.mem" (instance 5))
      (with "GOT.func" (instance 6))
      (with "env" (instance 7))
      (with "test:test/test" (instance 8))
    )
  )
  (core instance (;10;) (instantiate 3
      (with "env" (instance 0))
      (with "bar" (instance 4))
      (with "foo" (instance 9))
    )
  )
  (type (;1;) (func (param "v" s32) (result s32)))
  (alias core export 9 "test:test/test#foo" (core func (;4;)))
  (func (;1;) (type 1) (canon lift (core func 4)))
  (component (;0;)
    (type (;0;) (func (param "v" s32) (result s32)))
    (import "import-func-foo" (func (;0;) (type 0)))
    (type (;1;) (func (param "v" s32) (result s32)))
    (export (;1;) "foo" (func 0) (func (type 1)))
  )
  (instance (;1;) (instantiate 0
      (with "import-func-foo" (func 1))
    )
  )
  (export (;2;) "test:test/test" (instance 1))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)
(component
  (type (;0;)
    (instance
      (type (;0;) (func))
      (export (;0;) "foo" (func (type 0)))
    )
  )
  (import "other1" (instance (;0;) (type 0)))
  (type (;1;)
    (instance
      (type (;0;) (func))
      (export (;0;) "bar" (func (type 0)))
    )
  )
  (import "other2" (instance (;1;) (type 1)))
  (core module (;0;)
    (type (;0;) (func))
    (import "foo" "foo" (func (;0;) (type 0)))
    (import "foo" "bar" (func (;1;) (type 0)))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core module (;1;)
    (type (;0;) (func))
    (import "other1" "foo" (func $foo (;0;) (type 0)))
    (import "other2" "bar" (func $bar (;1;) (type 0)))
    (func (;2;) (type 0)
      call $foo
    )
    (func (;3;) (type 0)
      call $bar
    )
    (export "foo" (func 2))
    (export "bar" (func 3))
  )
  (core module (;2;)
    (type (;0;) (func))
    (func $adapt-foo-foo (;0;) (type 0)
      i32.const 0
      call_indirect (type 0)
    )
    (func $adapt-foo-bar (;1;) (type 0)
      i32.const 1
      call_indirect (type 0)
    )
    (table (;0;) 2 2 funcref)
    (export "0" (func $adapt-foo-foo))
    (export "1" (func $adapt-foo-bar))
    (export "$imports" (table 0))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core module (;3;)
    (type (;0;) (func))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 0)))
    (import "" "$imports" (table (;0;) 2 2 funcref))
    (elem (;0;) (i32.const 0) func 0 1)
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core instance (;0;) (instantiate 2))
  (alias core export 0 "0" (core func (;0;)))
  (alias core export 0 "1" (core func (;1;)))
  (core instance (;1;)
    (export "foo" (func 0))
    (export "bar" (func 1))
  )
  (core instance (;2;) (instantiate 0
      (with "foo" (instance 1))
    )
  )
  (alias export 0 "foo" (func (;0;)))
  (core func (;2;) (canon lower (func 0)))
  (core instance (;3;)
    (export "foo" (func 2))
  )
  (alias export 1 "bar" (func (;1;)))
  (core func (;3;) (canon lower (func 1)))
  (core instance (;4;)
    (export "bar" (func 3))
  )
  (core instance (;5;) (instantiate 1
      (with "other1" (instance 3))
      (with "other2" (instance 4))
    )
  )
  (alias core export 0 "$imports" (core table (;0;)))
  (alias core export 5 "foo" (core func (;4;)))
  (alias core export 5 "bar" (core func (;5;)))
  (core instance (;6;)
    (export "$imports" (table 0))
    (export "0" (func 4))
    (export "1" (func 5))
  )
  (core instance (;7;) (instantiate 3
      (with "" (instance 6))
    )
  )
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)

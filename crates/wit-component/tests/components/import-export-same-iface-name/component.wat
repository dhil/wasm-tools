(component
  (type (;0;)
    (instance
      (type (;0;) (func))
      (export (;0;) "a" (func (type 0)))
    )
  )
  (import "foo:dep/the-name" (instance (;0;) (type 0)))
  (type (;1;)
    (instance
      (type (;0;) (func))
      (export (;0;) "a" (func (type 0)))
    )
  )
  (import "foo:foo/the-name" (instance (;1;) (type 1)))
  (core module (;0;)
    (type (;0;) (func))
    (import "foo:dep/the-name" "a" (func (;0;) (type 0)))
    (import "foo:foo/the-name" "a" (func (;1;) (type 0)))
    (func (;2;) (type 0))
    (export "foo:foo/the-name#a" (func 2))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (alias export 0 "a" (func (;0;)))
  (core func (;0;) (canon lower (func 0)))
  (core instance (;0;)
    (export "a" (func 0))
  )
  (alias export 1 "a" (func (;1;)))
  (core func (;1;) (canon lower (func 1)))
  (core instance (;1;)
    (export "a" (func 1))
  )
  (core instance (;2;) (instantiate 0
      (with "foo:dep/the-name" (instance 0))
      (with "foo:foo/the-name" (instance 1))
    )
  )
  (type (;2;) (func))
  (alias core export 2 "foo:foo/the-name#a" (core func (;2;)))
  (func (;2;) (type 2) (canon lift (core func 2)))
  (component (;0;)
    (type (;0;) (func))
    (import "import-func-a" (func (;0;) (type 0)))
    (type (;1;) (func))
    (export (;1;) "a" (func 0) (func (type 1)))
  )
  (instance (;2;) (instantiate 0
      (with "import-func-a" (func 2))
    )
  )
  (export (;3;) "foo:foo/the-name" (instance 2))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)

(component
  (type (;0;)
    (instance
      (type (;0;) (record (field "f" u32)))
      (export (;1;) "f" (type (eq 0)))
      (type (;2;) (record (field "f" 1)))
      (export (;3;) "r" (type (eq 2)))
    )
  )
  (import "foo:foo/foo" (instance (;0;) (type 0)))
  (core module (;0;)
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core instance (;0;) (instantiate 0))
  (alias export 0 "f" (type (;1;)))
  (alias export 0 "r" (type (;2;)))
  (component (;0;)
    (type (;0;) (record (field "f" u32)))
    (import "import-type-f" (type (;1;) (eq 0)))
    (type (;2;) (record (field "f" 1)))
    (import "import-type-r" (type (;3;) (eq 2)))
    (export (;4;) "r" (type 3))
  )
  (instance (;1;) (instantiate 0
      (with "import-type-f" (type 1))
      (with "import-type-r" (type 2))
    )
  )
  (export (;2;) "x" (instance 1))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)

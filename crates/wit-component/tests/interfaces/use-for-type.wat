(component
  (type (;0;)
    (component
      (type (;0;)
        (instance)
      )
      (export (;0;) "foo:foo/foo" (instance (type 0)))
    )
  )
  (export (;1;) "foo" (type 0))
  (type (;2;)
    (component
      (type (;0;)
        (instance
          (type (;0;) u8)
          (export (;1;) "t" (type (eq 0)))
        )
      )
      (export (;0;) "foo:foo/bar" (instance (type 0)))
    )
  )
  (export (;3;) "bar" (type 2))
  (type (;4;)
    (component
      (type (;0;)
        (instance
          (type (;0;) u8)
          (export (;1;) "t" (type (eq 0)))
        )
      )
      (import "foo:foo/bar" (instance (;0;) (type 0)))
      (alias export 0 "t" (type (;1;)))
      (type (;2;)
        (instance
          (alias outer 1 1 (type (;0;)))
          (export (;1;) "t" (type (eq 0)))
          (type (;2;) (record (field "a" 1)))
          (export (;3;) "bar" (type (eq 2)))
        )
      )
      (export (;1;) "foo:foo/baz" (instance (type 2)))
    )
  )
  (export (;5;) "baz" (type 4))
  (@custom "package-docs" "\00{}")
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)

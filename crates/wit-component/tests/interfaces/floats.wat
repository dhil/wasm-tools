(component
  (type (;0;)
    (component
      (type (;0;)
        (instance
          (type (;0;) (func (param "x" float32)))
          (export (;0;) "float32-param" (func (type 0)))
          (type (;1;) (func (param "x" float64)))
          (export (;1;) "float64-param" (func (type 1)))
          (type (;2;) (func (result float32)))
          (export (;2;) "float32-result" (func (type 2)))
          (type (;3;) (func (result float64)))
          (export (;3;) "float64-result" (func (type 3)))
        )
      )
      (export (;0;) "foo:floats/floats" (instance (type 0)))
    )
  )
  (export (;1;) "floats" (type 0))
  (type (;2;)
    (component
      (type (;0;)
        (component
          (type (;0;)
            (instance
              (type (;0;) (func (param "x" float32)))
              (export (;0;) "float32-param" (func (type 0)))
              (type (;1;) (func (param "x" float64)))
              (export (;1;) "float64-param" (func (type 1)))
              (type (;2;) (func (result float32)))
              (export (;2;) "float32-result" (func (type 2)))
              (type (;3;) (func (result float64)))
              (export (;3;) "float64-result" (func (type 3)))
            )
          )
          (import "foo:floats/floats" (instance (;0;) (type 0)))
        )
      )
      (export (;0;) "foo:floats/floats-world" (component (type 0)))
    )
  )
  (export (;3;) "floats-world" (type 2))
  (@custom "package-docs" "\00{}")
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)

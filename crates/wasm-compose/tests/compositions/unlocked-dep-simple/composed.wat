(component
  (type (;0;)
    (instance
      (type (;0;) (func))
      (export (;0;) "a" (func (type 0)))
    )
  )
  (import "b" (instance (;0;) (type 0)))
  (component (;0;)
    (type (;0;)
      (instance
        (type (;0;) (func))
        (export (;0;) "a" (func (type 0)))
      )
    )
    (import "unlocked-dep=<foo:add@{>=1.0.0}>" (instance (;0;) (type 0)))
  )
  (component (;1;)
    (type (;0;)
      (instance
        (type (;0;) (func))
        (export (;0;) "a" (func (type 0)))
      )
    )
    (import "b" (instance (;0;) (type 0)))
    (alias export 0 "a" (func (;0;)))
    (export (;1;) "a" (func 0))
  )
  (instance (;1;) (instantiate 1
      (with "b" (instance 0))
    )
  )
  (instance (;2;) (instantiate 0
      (with "unlocked-dep=<foo:add@{>=1.0.0}>" (instance 1))
    )
  )
)
# *RISC-V J Extension*

## Charter

The RISC-V J extension aims to make RISC-V an attractive target for languages that are traditionally interpreted or JIT compiled, or which require large runtime libraries or language- level virtual machines. Examples include (but are not limited to) C#, Go, Haskell, Java, JavaScript, OCaml, PHP, Python, R, Ruby, Scala, Smalltalk or WebAssembly.

Typical features of these languages include garbage collection, dynamic typing and dynamic dispatch, transparent boxing of primitive values, and reflection. This provides a very wide scope for possible approaches and, as such, the working group will follow a two-pronged strategy investigating both immediate gains and longer-term more experimental ideas concurrently. Existing attempts to implement JIT-compiled languages on RISC-V have highlighted some places where better instruction density is possible, and these should fall into an early version of the specification.

Instructions intended to accelerate common JIT’d instruction sequences may be optional within the J extension, with the expectation that software will test for their presence before determining which code sequence to generate. This also provides scope for additions that are only appropriate for a subset of microarchitectures. For example, there is increasing interest in running JavaScript on IoT devices, but acceleration for simple low-power in-order pipelines with constrained memory may be wholly inappropriate for large application cores.

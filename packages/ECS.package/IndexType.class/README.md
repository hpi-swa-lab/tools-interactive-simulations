An IndexType is a proxy so we can use integers directly in a VectorStorage, which require that you can instantiate a type via its #new method, which is not the case for integers.
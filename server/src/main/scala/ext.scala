import zio.*

import db.*

extension (x: String)
  inline def toChunk: Chunk[Byte] = Chunk.fromArray(x.getBytes("utf8").nn)
  inline def asColumn: Column = Column(x.getBytes("utf8").nn)
  inline def asKey: Key = Key(x.getBytes("utf8").nn)

extension (xs: Array[Byte])
  inline def toChunk: Chunk[Byte] = Chunk.fromArray(xs)

inline def unit: Unit = ()

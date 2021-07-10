package api

import proto.*

enum Pull derives CanEqual:
  @N(1) case Ping

enum Push derives CanEqual:
  @N(1) case Pong
  @N(2) case Suggestions(@N(1) xs: Seq[String])

given MessageCodec[Pull] = enumByN
given MessageCodec[Push] =
  import Push.*
  given MessageCodec[Suggestions] = caseCodecAuto
  enumByN

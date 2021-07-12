package api

import proto.*

enum Pull derives CanEqual:
  @N(1) case Ping
  @N(11) case ResultAsk(@N(1) word: String)

enum Push derives CanEqual:
  @N(1) case Pong
  @N(10) case Suggestions(@N(1) xs: Seq[String])
  @N(11) case ResultOk(@N(1) t: String)

given MessageCodec[Pull] =
  import Pull.*
  given MessageCodec[ResultAsk] = caseCodecAuto
  enumByN

given MessageCodec[Push] =
  import Push.*
  given MessageCodec[Suggestions] = caseCodecAuto
  given MessageCodec[ResultOk] = caseCodecAuto
  enumByN

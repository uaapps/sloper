import ftier.*, http.*, server.*, ws.*
import zio.*, duration.*
import proto.*
import db.*

import api.{*, given}, Push.*, Pull.*

type WsEnv = WsContext & Env

val wsHandler: WsHandler[WsEnv] =
  case msg: Binary =>
    for
      m <- IO.effect(decode[Pull](msg.v.toArray))
      _ <-
        m match
          case Pull.Ping => send(Push.Pong).delay(30 seconds)
          case Pull.ResultAsk(word) => send(ResultOk(s"$word is translated"))
    yield unit
  case Open => send(Push.Pong)
  case Close => IO.unit
  case _ => Ws.close()

def send(x: Push): URIO[WsEnv, Unit] =
  Ws.send(Binary(Chunk.fromArray(encode[Push](x))))

val getSession: URIO[WsEnv, Option[Session]] =
  (for
    req <- Ws.req
    cookie <- req.cookie("a").some
    data <- get(sessions, cookie.asKey).some
    session <- db.decodeE(data.bytes)
  yield session).optional

case class Session()

given MessageCodec[Session] = caseCodecAuto
given CanEqual[Msg, Msg] = CanEqual.derived

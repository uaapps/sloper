import zio.*, nio.*, core.*, clock.*, stream.*, console.*, system.*, IO.succeed
import ftier.*, ws.*, http.*, server.*
import proto.*
import db.*

type Env = Store & ZEnv

val sessions = "sessions".asColumn

val app =
  val port = 9002
  val z: RIO[Env, Unit] =
    for {
      _ <- putStrLn(s"http://localhost:$port")
      addr <- SocketAddress.inetSocketAddress(port).orDie
      _ <-
        bind(
          addr
        , httpHandler
        , wsHandler
        )
    } yield unit
  z.provideCustomLayer(Store.live("data", sessions :: Nil))

@main def run(): Unit = Runtime.default.unsafeRun(app)

import zio.*, nio.*, core.*, clock.*, stream.*, console.*, system.*
import ftier.*, ws.*, udp.*, http.*, server.*
import api.{*, given}
import db.*

val httpHandler: HttpHandler[Env] =
  case UpgradeRequest(r) => upgrade(r)
  
  case Request("GET", Root / "s" / "", _, _) =>
    IO.succeed(Response(422, headers(0, "text/plain"), Chunk.empty))

  case Request("GET", Root / "s" / query, _, _) =>
    for
      q <- IO.effectTotal(java.net.URLDecoder.decode(query, "utf8").nn)
      xs <- encodeE(Push.Suggestions(Seq(q+"1", q+"2")))
    yield Response(200, headers(xs.length, "application/octet-stream"), xs.toChunk)
  
  case _ => IO.succeed(notfound)

val notfound =
  val content = "Not Found".toChunk
  Response(404, headers(content.length, "text/plain"), content)

def headers(len: Long, ct: String): Map[String, String] =
  Map(
    "Content-Length" -> len.toString
  , "Content-Type" -> ct
  , "Access-Control-Allow-Origin" -> "*"
  )

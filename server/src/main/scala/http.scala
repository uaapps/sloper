import zio.*, nio.*, core.*, clock.*, stream.*, console.*, system.*
import ftier.*, ws.*, udp.*, http.*, server.*
import api.{*, given}
import db.*

val httpHandler: HttpHandler[Env] =
  case UpgradeRequest(r) => upgrade(r)
  
  case Request("GET", Root / "s" / query, _, _) =>
    for
      xs <- encodeE(Push.Suggestions(Seq(query+"1", query+"2")))
    yield Response(200, headers(xs.length, "application/octet-stream"), xs.toChunk)
  
  case _ => IO.succeed(notfound)

val notfound =
  val content = "Not Found".toChunk
  Response(404, headers(content.length, "text/plain"), content)

def headers(len: Long, ct: String): Map[String, String] =
  Map(
    "Content-Length" -> len.toString
  , "Content-Type" -> ct
  )

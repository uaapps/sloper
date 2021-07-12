ThisBuild / scalaVersion := "3.0.1"

lazy val sloper = project
  .in(file("."))
  .settings(
    fork := true
  , scalacOptions ++= Seq(
      "-language:strictEquality"
    , "-language:postfixOps"
    , "-Yexplicit-nulls"
    , "-source:future"
    , "release:11"
    )
  , libraryDependencies += "dev.zio" %% "zio-test-sbt" % "1.0.9" % Test
  , testFrameworks += new TestFramework("zio.test.sbt.ZTestFramework")
  )
  .dependsOn(ftier, db)

lazy val ftier = project.in(file("deps/frontier"))
lazy val db = project.in(file("deps/db"))

ThisBuild / turbo := true
ThisBuild / useCoursier := true
Global / onChangedBuildSource := ReloadOnSourceChanges

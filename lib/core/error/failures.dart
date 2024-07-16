abstract class Failures{
  String massage;
  Failures(this.massage);
}
class RemoteFailure extends Failures{
  RemoteFailure(super.massage);
}
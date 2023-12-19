class Failures {
  String message;

  Failures(this.message);
}

class ServerFailures extends Failures {
  ServerFailures(super.message);
}

class CachedFailure extends Failures {
  CachedFailure(super.message);
}

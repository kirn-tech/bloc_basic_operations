class Response1 {
  @override
  String toString() => 'Response1 received';
}

class Response2 {
  Response1 response1;

  Response2(this.response1);

  @override
  String toString() => 'Response2 received';
}

class Response3 {
  @override
  String toString() => 'Response3 received';
}

class Request1 {}

class Request2 {
  Response1 response1;

  Request2(this.response1);
}

class Request3 {}

abstract class RouteGuard<T> {
  Future<T> redirect(T from);
}

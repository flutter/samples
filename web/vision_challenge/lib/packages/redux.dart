// Package redux:
//    https://pub.dev/packages/redux

import 'dart:async';

/// Defines an application's state change
///
/// Implement this typedef to modify your app state in response to a given
/// action.
///
/// ### Example
///
///     int counterReducer(int state, action) {
///       switch (action) {
///         case 'INCREMENT':
///           return state + 1;
///         case 'DECREMENT':
///           return state - 1;
///         default:
///           return state;
///       }
///     }
///
///     final store = new Store<int>(counterReducer);
typedef Reducer<State> = State Function(State state, dynamic action);

/// Defines a [Reducer] using a class interface.
///
/// Implement this class to modify your app state in response to a given action.
///
/// For some use cases, a class may be preferred to a function. In these
/// instances, a ReducerClass can be used.
///
/// ### Example
///
///     class CounterReducer extends ReducerClass<int> {
///       int call(int state, action) {
///         switch (action) {
///           case 'INCREMENT':
///             return state + 1;
///           case 'DECREMENT':
///             return state - 1;
///           default:
///             return state;
///         }
///       }
///     }
///
///     final store = new Store<int>(new CounterReducer());
abstract class ReducerClass<State> {
  State call(State state, dynamic action);
}

/// A function that intercepts actions and potentially transform actions before
/// they reach the reducer.
///
/// Middleware intercept actions before they reach the reducer. This gives them
/// the ability to produce side-effects or modify the passed in action before
/// they reach the reducer.
///
/// ### Example
///
///     loggingMiddleware(Store<int> store, action, NextDispatcher next) {
///       print('${new DateTime.now()}: $action');
///
///       next(action);
///     }
///
///     // Create your store with the loggingMiddleware
///     final store = new Store<int>(
///       counterReducer,
///       middleware: [loggingMiddleware],
///     );
typedef Middleware<State> = void Function(
  Store<State> store,
  dynamic action,
  NextDispatcher next,
);

/// Defines a [Middleware] using a Class interface.
///
/// Middleware intercept actions before they reach the reducer. This gives them
/// the ability to produce side-effects or modify the passed in action before
/// they reach the reducer.
///
/// For some use cases, a class may be preferred to a function. In these
/// instances, a MiddlewareClass can be used.
///
/// ### Example
///     class LoggingMiddleware extends MiddlewareClass<int> {
///       call(Store<int> store, action, NextDispatcher next) {
///         print('${new DateTime.now()}: $action');
///
///         next(action);
///       }
///     }
///
///     // Create your store with the loggingMiddleware
///     final store = new Store<int>(
///       counterReducer,
///       middleware: [new LoggingMiddleware()],
///     );
abstract class MiddlewareClass<State> {
  void call(Store<State> store, dynamic action, NextDispatcher next);
}

/// The contract between one piece of middleware and the next in the chain. Use
/// it to send the current action in your [Middleware] to the next piece of
/// [Middleware] in the chain.
///
/// Middleware can optionally pass the original action or a modified action to
/// the next piece of middleware, or never call the next piece of middleware at
/// all.
typedef NextDispatcher = void Function(dynamic action);

/// Creates a Redux store that holds the app state tree.
///
/// The only way to change the state tree in the store is to [dispatch] an
/// action. the action will then be intercepted by any provided [Middleware].
/// After running through the middleware, the action will be sent to the given
/// [Reducer] to update the state tree.
///
/// To access the state tree, call the [state] getter or listen to the
/// [onChange] stream.
///
/// ### Basic Example
///
///     // Create a reducer
///     final increment = 'INCREMENT';
///     final decrement = 'DECREMENT';
///
///     int counterReducer(int state, action) {
///       switch (action) {
///         case increment:
///           return state + 1;
///         case decrement:
///           return state - 1;
///         default:
///           return state;
///       }
///     }
///
///     // Create the store
///     final store = new Store<int>(counterReducer, initialState: 0);
///
///     // Print the Store's state.
///     print(store.state); // prints "0"
///
///     // Dispatch an action. This will be sent to the reducer to update the
///     // state.
///     store.dispatch(increment);
///
///     // Print the updated state. As an alternative, you can use the
///     // `store.onChange.listen` to respond to all state change events.
///     print(store.state); // prints "1"
class Store<State> {
  /// The [Reducer] for your Store. Allows you to get the current reducer or
  /// replace it with a new one if need be.
  Reducer<State> reducer;

  final StreamController<State> _changeController;
  State _state;
  List<NextDispatcher> _dispatchers;

  Store(
    this.reducer, {
    State initialState,
    List<Middleware<State>> middleware = const [],
    bool syncStream = false,

    /// If set to true, the Store will not emit onChange events if the new State
    /// that is returned from your [reducer] in response to an Action is equal
    /// to the previous state.
    ///
    /// Under the hood, it will use the `==` method from your State class to
    /// determine whether or not the two States are equal.
    bool distinct = false,
  }) : _changeController = StreamController.broadcast(sync: syncStream) {
    _state = initialState;
    _dispatchers = _createDispatchers(
      middleware,
      _createReduceAndNotify(distinct),
    );
  }

  /// Returns the current state of the app
  State get state => _state;

  /// A stream that emits the current state when it changes.
  ///
  /// ### Example
  ///
  ///     // First, create the Store
  ///     final store = new Store<int>(counterReducer, 0);
  ///
  ///     // Next, listen to the Store's onChange stream, and print the latest
  ///     // state to your console whenever the reducer produces a new State.
  ///     //
  ///     // We'll store the StreamSubscription as a variable so we can stop
  ///     // listening later.
  ///     final subscription = store.onChange.listen(print);
  ///
  ///     // Dispatch some actions, and see the printing magic!
  ///     store.dispatch("INCREMENT"); // prints 1
  ///     store.dispatch("INCREMENT"); // prints 2
  ///     store.dispatch("DECREMENT"); // prints 1
  ///
  ///     // When you want to stop printing the state to the console, simply
  ///     `cancel` your `subscription`.
  ///     subscription.cancel();
  Stream<State> get onChange => _changeController.stream;

  // Creates the base [NextDispatcher].
  //
  // The base NextDispatcher will be called after all other middleware provided
  // by the user have been run. Its job is simple: Run the current state through
  // the reducer, save the result, and notify any subscribers.
  NextDispatcher _createReduceAndNotify(bool distinct) {
    return (dynamic action) {
      final state = reducer(_state, action);

      if (distinct && state == _state) return;

      _state = state;
      _changeController.add(state);
    };
  }

  List<NextDispatcher> _createDispatchers(
    List<Middleware<State>> middleware,
    NextDispatcher reduceAndNotify,
  ) {
    final dispatchers = <NextDispatcher>[]..add(reduceAndNotify);

    // Convert each [Middleware] into a [NextDispatcher]
    for (var nextMiddleware in middleware.reversed) {
      final next = dispatchers.last;

      dispatchers.add(
        (dynamic action) => nextMiddleware(this, action, next),
      );
    }

    return dispatchers.reversed.toList();
  }

  /// Runs the action through all provided [Middleware], then applies an action
  /// to the state using the given [Reducer]. Please note: [Middleware] can
  /// intercept actions, and can modify actions or stop them from passing
  /// through to the reducer.
  void dispatch(dynamic action) {
    _dispatchers[0](action);
  }

  /// Closes down the Store so it will no longer be operational. Only use this
  /// if you want to destroy the Store while your app is running. Do not use
  /// this method as a way to stop listening to [onChange] state changes. For
  /// that purpose, view the [onChange] documentation.
  Future teardown() async {
    _state = null;
    return _changeController.close();
  }
}

/// A convenience class for binding Reducers to Actions of a given Type. This
/// allows for type safe [Reducer]s and reduces boilerplate.
///
/// ### Example
///
/// In order to see what this utility function does, let's take a look at a
/// regular example of using reducers based on the Type of an action.
///
/// ```
/// // We define out State and Action classes.
/// class AppState {
///   final List<Item> items;
///
///   AppState(this.items);
/// }
///
/// class LoadItemsAction {}
/// class UpdateItemsAction {}
/// class AddItemAction{}
/// class RemoveItemAction {}
/// class ShuffleItemsAction {}
/// class ReverseItemsAction {}
/// class ItemsLoadedAction<Item> {
///   final List<Item> items;
///
///   ItemsLoadedAction(this.items);
/// }
///
/// // Then we define our reducer. Since we handle different actions in our
/// // reducer, we need to determine what kind of action we're working with
/// // using if statements, and then run some computation in response.
/// //
/// // This isn't a big deal if we have relatively few cases to handle, but your
/// // reducer function can quickly grow large and take on too many
/// // responsibilities as demonstrated here with pseudo-code.
/// final appReducer = (AppState state, action) {
///   if (action is ItemsLoadedAction) {
///     return new AppState(action.items);
///   } else if (action is UpdateItemsAction) {
///     return ...;
///   } else if (action is AddItemAction) {
///     return ...;
///   } else if (action is RemoveItemAction) {
///     return ...;
///   } else if (action is ShuffleItemsAction) {
///     return ...;
///   } else if (action is ReverseItemsAction) {
///     return ...;
///   } else {
///     return state;
///   }
/// };
/// ```
///
/// What would be nice would be to break our big reducer up into smaller
/// reducers. It would also be nice to bind specific Types of Actions to
/// specific reducers so we can ensure type safety for our reducers while
/// avoiding large trees of `if` statements.
///
/// ```
/// // First, we'll break out all of our individual State Changes into
/// // individual reducers. These can be easily tested or composed!
/// final loadItemsReducer = (AppState state, LoadTodosAction action) =>
///   return new AppState(action.items);
///
/// final updateItemsReducer = (AppState state, UpdateItemsAction action) {
///   return ...;
/// }
///
/// final addItemReducer = (AppState state, AddItemAction action) {
///   return ...;
/// }
///
/// final removeItemReducer = (AppState state, RemoveItemAction action) {
///   return ...;
/// }
///
/// final shuffleItemsReducer = (AppState state, ShuffleItemAction action) {
///   return ...;
/// }
///
/// final reverseItemsReducer = (AppState state, ReverseItemAction action) {
///   return ...;
/// }
///
/// // We will then wire up specific types of actions to our reducer functions
/// // above. This will return a new Reducer<AppState> which puts everything
/// // together!.
/// final Reducer<AppState> appReducer = combineReducers([
///   new TypedReducer<AppState, LoadTodosAction>(loadItemsReducer),
///   new TypedReducer<AppState, UpdateItemsAction>(updateItemsReducer),
///   new TypedReducer<AppState, AddItemAction>(addItemReducer),
///   new TypedReducer<AppState, RemoveItemAction>(removeItemReducer),
///   new TypedReducer<AppState, ShuffleItemAction>(shuffleItemsReducer),
///   new TypedReducer<AppState, ReverseItemAction>(reverseItemsReducer),
/// ]);
/// ```
class TypedReducer<State, Action> implements ReducerClass<State> {
  final State Function(State state, Action action) reducer;

  TypedReducer(this.reducer);

  @override
  State call(State state, dynamic action) {
    if (action is Action) {
      return reducer(state, action);
    }

    return state;
  }
}

/// A convenience type for binding a piece of Middleware to an Action
/// of a specific type. Allows for Type Safe Middleware and reduces boilerplate.
///
/// ### Example
///
/// In order to see what this utility function does, let's take a look at a
/// regular example of running Middleware based on the Type of an action.
///
/// ```
/// class AppState {
///   final List<Item> items;
///
///   AppState(this.items);
/// }
/// class LoadItemsAction {}
/// class UpdateItemsAction {}
/// class AddItemAction{}
/// class RemoveItemAction {}
/// class ShuffleItemsAction {}
/// class ReverseItemsAction {}
/// class ItemsLoadedAction<Item> {
///   final List<Item> items;
///
///   ItemsLoadedAction(this.items);
/// }
///
/// final loadItems = () { /* Function that loads a Future<List<Item>> */}
/// final saveItems = (List<Item> items) { /* Function that persists items */}
///
/// final middleware = (Store<AppState> store, action, NextDispatcher next) {
///   if (action is LoadItemsAction) {
///     loadItems()
///       .then((items) => store.dispatch(new ItemsLoaded(items))
///       .catchError((_) => store.dispatch(new ItemsNotLoaded());
///
///     next(action);
///   } else if (action is UpdateItemsAction ||
///       action is AddItemAction ||
///       action is RemoveItemAction ||
///       action is ShuffleItemsAction ||
///       action is ReverseItemsAction) {
///     next(action);
///
///     saveItems(store.state.items);
///   } else {
///     next(action);
///   }
/// };
/// ```
///
/// This works fine if you have one or two actions to handle, but you might
/// notice it's getting a bit messy already. Let's see how this lib helps clean
/// it up.
///
/// ```
/// // First, let's start by breaking up our functionality into two middleware
/// // functions.
/// //
/// // The loadItemsMiddleware will only handle the `LoadItemsAction`s that
/// // are dispatched, so we can annotate the Type of action.
/// final loadItemsMiddleware = (
///   Store<AppState> store,
///   LoadItemsAction action,
///   NextDispatcher next,
/// ) {
///   loadItems()
///     .then((items) => store.dispatch(new ItemsLoaded(items))
///     .catchError((_) => store.dispatch(new ItemsNotLoaded());
///
///   next(action);
/// }
///
/// // The saveItemsMiddleware handles all actions that change the Items, but
/// // does not depend on the payload of the action. Therefore, `action` will
/// // remain dynamic.
/// final saveItemsMiddleware = (
///   Store<AppState> store,
///   dynamic action,
///   NextDispatcher next,
/// ) {
///   next(action);
///
///   saveItems(store.state.items);
/// }
///
/// // We will then wire up specific types of actions to a List of Middleware
/// // that handle those actions.
/// final List<Middleware<AppState>> middleware = [
///   new TypedMiddleware<AppState, LoadTodosAction>(loadItemsMiddleware),
///   new TypedMiddleware<AppState, AddTodoAction>(saveItemsMiddleware),
///   new TypedMiddleware<AppState, ClearCompletedAction>(saveItemsMiddleware),
///   new TypedMiddleware<AppState, ToggleAllAction>(saveItemsMiddleware),
///   new TypedMiddleware<AppState, UpdateTodoAction>(saveItemsMiddleware),
///   new TypedMiddleware<AppState, TodosLoadedAction>(saveItemsMiddleware),
/// ];
/// ```
class TypedMiddleware<State, Action> implements MiddlewareClass<State> {
  final void Function(
    Store<State> store,
    Action action,
    NextDispatcher next,
  ) middleware;

  TypedMiddleware(this.middleware);

  @override
  void call(Store<State> store, dynamic action, NextDispatcher next) {
    if (action is Action) {
      middleware(store, action, next);
    } else {
      next(action);
    }
  }
}

/// Defines a utility function that combines several reducers.
///
/// In order to prevent having one large, monolithic reducer in your app, it can
/// be convenient to break reducers up into smaller parts that handle more
/// specific functionality that can be decoupled and easily tested.
///
/// ### Example
///
///     helloReducer(state, action) {
///         return "hello";
///     }
///
///     friendReducer(state, action) {
///       return state + " friend";
///     }
///
///     final helloFriendReducer = combineReducers(
///       helloReducer,
///       friendReducer,
///     );
Reducer<State> combineReducers<State>(Iterable<Reducer<State>> reducers) {
  return (State state, dynamic action) {
    for (final reducer in reducers) {
      state = reducer(state, action);
    }
    return state;
  };
}

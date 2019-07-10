// Package flutter_redux:
//    https://pub.dev/packages/flutter_redux

import 'dart:async';

import 'package:flutter_web/widgets.dart';
import 'package:meta/meta.dart';
import 'redux.dart';

/// Provides a Redux [Store] to all descendants of this Widget. This should
/// generally be a root widget in your App. Connect to the Store provided
/// by this Widget using a [StoreConnector] or [StoreBuilder].
class StoreProvider<S> extends InheritedWidget {
  final Store<S> _store;

  /// Create a [StoreProvider] by passing in the required [store] and [child]
  /// parameters.
  const StoreProvider({
    Key key,
    @required Store<S> store,
    @required Widget child,
  })  : assert(store != null),
        assert(child != null),
        _store = store,
        super(key: key, child: child);

  /// A method that can be called by descendant Widgets to retrieve the Store
  /// from the StoreProvider.
  ///
  /// Important: When using this method, pass through complete type information
  /// or Flutter will be unable to find the correct StoreProvider!
  ///
  /// ### Example
  ///
  /// ```
  /// class MyWidget extends StatelessWidget {
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     final store = StoreProvider.of<int>(context);
  ///
  ///     return Text('${store.state}');
  ///   }
  /// }
  /// ```
  static Store<S> of<S>(BuildContext context) {
    final type = _typeOf<StoreProvider<S>>();
    final provider =
        context.inheritFromWidgetOfExactType(type) as StoreProvider<S>;

    if (provider == null) throw StoreProviderError(type);

    return provider._store;
  }

  // Workaround to capture generics
  static Type _typeOf<T>() => T;

  @override
  bool updateShouldNotify(StoreProvider<S> oldWidget) =>
      _store != oldWidget._store;
}

/// Build a Widget using the [BuildContext] and [ViewModel]. The [ViewModel] is
/// derived from the [Store] using a [StoreConverter].
typedef ViewModelBuilder<ViewModel> = Widget Function(
  BuildContext context,
  ViewModel vm,
);

/// Convert the entire [Store] into a [ViewModel]. The [ViewModel] will be used
/// to build a Widget using the [ViewModelBuilder].
typedef StoreConverter<S, ViewModel> = ViewModel Function(
  Store<S> store,
);

/// A function that will be run when the [StoreConnector] is initialized (using
/// the [State.initState] method). This can be useful for dispatching actions
/// that fetch data for your Widget when it is first displayed.
typedef OnInitCallback<S> = void Function(
  Store<S> store,
);

/// A function that will be run when the StoreConnector is removed from the
/// Widget Tree.
///
/// It is run in the [State.dispose] method.
///
/// This can be useful for dispatching actions that remove stale data from
/// your State tree.
typedef OnDisposeCallback<S> = void Function(
  Store<S> store,
);

/// A test of whether or not your `converter` function should run in response
/// to a State change. For advanced use only.
///
/// Some changes to the State of your application will mean your `converter`
/// function can't produce a useful ViewModel. In these cases, such as when
/// performing exit animations on data that has been removed from your Store,
/// it can be best to ignore the State change while your animation completes.
///
/// To ignore a change, provide a function that returns true or false. If the
/// returned value is true, the change will be ignored.
///
/// If you ignore a change, and the framework needs to rebuild the Widget, the
/// `builder` function will be called with the latest `ViewModel` produced by
/// your `converter` function.
typedef IgnoreChangeTest<S> = bool Function(S state);

/// A function that will be run on State change, before the build method.
///
/// This function is passed the `ViewModel`, and if `distinct` is `true`,
/// it will only be called if the `ViewModel` changes.
///
/// This can be useful for imperative calls to things like Navigator,
/// TabController, etc
typedef OnWillChangeCallback<ViewModel> = void Function(ViewModel viewModel);

/// A function that will be run on State change, after the build method.
///
/// This function is passed the `ViewModel`, and if `distinct` is `true`,
/// it will only be called if the `ViewModel` changes.
///
/// This can be useful for running certain animations after the build is
/// complete.
///
/// Note: Using a [BuildContext] inside this callback can cause problems if
/// the callback performs navigation. For navigation purposes, please use
/// an [OnWillChangeCallback].
typedef OnDidChangeCallback<ViewModel> = void Function(ViewModel viewModel);

/// A function that will be run after the Widget is built the first time.
///
/// This function is passed the initial `ViewModel` created by the `converter`
/// function.
///
/// This can be useful for starting certain animations, such as showing
/// Snackbars, after the Widget is built the first time.
typedef OnInitialBuildCallback<ViewModel> = void Function(ViewModel viewModel);

/// Build a widget based on the state of the [Store].
///
/// Before the [builder] is run, the [converter] will convert the store into a
/// more specific `ViewModel` tailored to the Widget being built.
///
/// Every time the store changes, the Widget will be rebuilt. As a performance
/// optimization, the Widget can be rebuilt only when the [ViewModel] changes.
/// In order for this to work correctly, you must implement [==] and [hashCode]
/// for the [ViewModel], and set the [distinct] option to true when creating
/// your StoreConnector.
class StoreConnector<S, ViewModel> extends StatelessWidget {
  /// Build a Widget using the [BuildContext] and [ViewModel]. The [ViewModel]
  /// is created by the [converter] function.
  final ViewModelBuilder<ViewModel> builder;

  /// Convert the [Store] into a [ViewModel]. The resulting [ViewModel] will be
  /// passed to the [builder] function.
  final StoreConverter<S, ViewModel> converter;

  /// As a performance optimization, the Widget can be rebuilt only when the
  /// [ViewModel] changes. In order for this to work correctly, you must
  /// implement [==] and [hashCode] for the [ViewModel], and set the [distinct]
  /// option to true when creating your StoreConnector.
  final bool distinct;

  /// A function that will be run when the StoreConnector is initially created.
  /// It is run in the [State.initState] method.
  ///
  /// This can be useful for dispatching actions that fetch data for your Widget
  /// when it is first displayed.
  final OnInitCallback<S> onInit;

  /// A function that will be run when the StoreConnector is removed from the
  /// Widget Tree.
  ///
  /// It is run in the [State.dispose] method.
  ///
  /// This can be useful for dispatching actions that remove stale data from
  /// your State tree.
  final OnDisposeCallback<S> onDispose;

  /// Determines whether the Widget should be rebuilt when the Store emits an
  /// onChange event.
  final bool rebuildOnChange;

  /// A test of whether or not your [converter] function should run in response
  /// to a State change. For advanced use only.
  ///
  /// Some changes to the State of your application will mean your [converter]
  /// function can't produce a useful ViewModel. In these cases, such as when
  /// performing exit animations on data that has been removed from your Store,
  /// it can be best to ignore the State change while your animation completes.
  ///
  /// To ignore a change, provide a function that returns true or false. If the
  /// returned value is true, the change will be ignored.
  ///
  /// If you ignore a change, and the framework needs to rebuild the Widget, the
  /// [builder] function will be called with the latest [ViewModel] produced by
  /// your [converter] function.
  final IgnoreChangeTest<S> ignoreChange;

  /// A function that will be run on State change, before the Widget is built.
  ///
  /// This function is passed the `ViewModel`, and if `distinct` is `true`,
  /// it will only be called if the `ViewModel` changes.
  ///
  /// This can be useful for imperative calls to things like Navigator,
  /// TabController, etc
  final OnWillChangeCallback<ViewModel> onWillChange;

  /// A function that will be run on State change, after the Widget is built.
  ///
  /// This function is passed the `ViewModel`, and if `distinct` is `true`,
  /// it will only be called if the `ViewModel` changes.
  ///
  /// This can be useful for running certain animations after the build is
  /// complete.
  ///
  /// Note: Using a [BuildContext] inside this callback can cause problems if
  /// the callback performs navigation. For navigation purposes, please use
  /// [onWillChange].
  final OnDidChangeCallback<ViewModel> onDidChange;

  /// A function that will be run after the Widget is built the first time.
  ///
  /// This function is passed the initial `ViewModel` created by the [converter]
  /// function.
  ///
  /// This can be useful for starting certain animations, such as showing
  /// Snackbars, after the Widget is built the first time.
  final OnInitialBuildCallback<ViewModel> onInitialBuild;

  /// Create a [StoreConnector] by passing in the required [converter] and
  /// [builder] functions.
  ///
  /// You can also specify a number of additional parameters that allow you to
  /// modify the behavior of the StoreConnector. Please see the documentation
  /// for each option for more info.
  StoreConnector({
    Key key,
    @required this.builder,
    @required this.converter,
    this.distinct = false,
    this.onInit,
    this.onDispose,
    this.rebuildOnChange = true,
    this.ignoreChange,
    this.onWillChange,
    this.onDidChange,
    this.onInitialBuild,
  })  : assert(builder != null),
        assert(converter != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _StoreStreamListener<S, ViewModel>(
      store: StoreProvider.of<S>(context),
      builder: builder,
      converter: converter,
      distinct: distinct,
      onInit: onInit,
      onDispose: onDispose,
      rebuildOnChange: rebuildOnChange,
      ignoreChange: ignoreChange,
      onWillChange: onWillChange,
      onDidChange: onDidChange,
      onInitialBuild: onInitialBuild,
    );
  }
}

/// Build a Widget by passing the [Store] directly to the build function.
///
/// Generally, it's considered best practice to use the [StoreConnector] and to
/// build a `ViewModel` specifically for your Widget rather than passing through
/// the entire [Store], but this is provided for convenience when that isn't
/// necessary.
class StoreBuilder<S> extends StatelessWidget {
  static Store<S> _identity<S>(Store<S> store) => store;

  /// Builds a Widget using the [BuildContext] and your [Store].
  final ViewModelBuilder<Store<S>> builder;

  /// Indicates whether or not the Widget should rebuild when the [Store] emits
  /// an `onChange` event.
  final bool rebuildOnChange;

  /// A function that will be run when the StoreConnector is initially created.
  /// It is run in the [State.initState] method.
  ///
  /// This can be useful for dispatching actions that fetch data for your Widget
  /// when it is first displayed.
  final OnInitCallback<S> onInit;

  /// A function that will be run when the StoreBuilder is removed from the
  /// Widget Tree.
  ///
  /// It is run in the [State.dispose] method.
  ///
  /// This can be useful for dispatching actions that remove stale data from
  /// your State tree.
  final OnDisposeCallback<S> onDispose;

  /// A function that will be run on State change, before the Widget is built.
  ///
  /// This can be useful for imperative calls to things like Navigator,
  /// TabController, etc
  final OnWillChangeCallback<Store<S>> onWillChange;

  /// A function that will be run on State change, after the Widget is built.
  ///
  /// This can be useful for running certain animations after the build is
  /// complete
  ///
  /// Note: Using a [BuildContext] inside this callback can cause problems if
  /// the callback performs navigation. For navigation purposes, please use
  /// [onWillChange].
  final OnDidChangeCallback<Store<S>> onDidChange;

  /// A function that will be run after the Widget is built the first time.
  ///
  /// This can be useful for starting certain animations, such as showing
  /// Snackbars, after the Widget is built the first time.
  final OnInitialBuildCallback<Store<S>> onInitialBuild;

  /// Create's a Widget based on the Store.
  StoreBuilder({
    Key key,
    @required this.builder,
    this.onInit,
    this.onDispose,
    this.rebuildOnChange = true,
    this.onWillChange,
    this.onDidChange,
    this.onInitialBuild,
  })  : assert(builder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<S, Store<S>>(
      builder: builder,
      converter: _identity,
      rebuildOnChange: rebuildOnChange,
      onInit: onInit,
      onDispose: onDispose,
      onWillChange: onWillChange,
      onDidChange: onDidChange,
      onInitialBuild: onInitialBuild,
    );
  }
}

/// Listens to the [Store] and calls [builder] whenever [store] changes.
class _StoreStreamListener<S, ViewModel> extends StatefulWidget {
  final ViewModelBuilder<ViewModel> builder;
  final StoreConverter<S, ViewModel> converter;
  final Store<S> store;
  final bool rebuildOnChange;
  final bool distinct;
  final OnInitCallback<S> onInit;
  final OnDisposeCallback<S> onDispose;
  final IgnoreChangeTest<S> ignoreChange;
  final OnWillChangeCallback<ViewModel> onWillChange;
  final OnDidChangeCallback<ViewModel> onDidChange;
  final OnInitialBuildCallback<ViewModel> onInitialBuild;

  _StoreStreamListener({
    Key key,
    @required this.builder,
    @required this.store,
    @required this.converter,
    this.distinct = false,
    this.onInit,
    this.onDispose,
    this.rebuildOnChange = true,
    this.ignoreChange,
    this.onWillChange,
    this.onDidChange,
    this.onInitialBuild,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StoreStreamListenerState<S, ViewModel>();
  }
}

class _StoreStreamListenerState<S, ViewModel>
    extends State<_StoreStreamListener<S, ViewModel>> {
  Stream<ViewModel> stream;
  ViewModel latestValue;

  @override
  void initState() {
    _init();

    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose(widget.store);
    }

    super.dispose();
  }

  @override
  void didUpdateWidget(_StoreStreamListener<S, ViewModel> oldWidget) {
    if (widget.store != oldWidget.store) {
      _init();
    }

    super.didUpdateWidget(oldWidget);
  }

  void _init() {
    if (widget.onInit != null) {
      widget.onInit(widget.store);
    }

    latestValue = widget.converter(widget.store);

    if (widget.onInitialBuild != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onInitialBuild(latestValue);
      });
    }

    var _stream = widget.store.onChange;

    if (widget.ignoreChange != null) {
      _stream = _stream.where((state) => !widget.ignoreChange(state));
    }

    stream = _stream.map((_) => widget.converter(widget.store));

    // Don't use `Stream.distinct` because it cannot capture the initial
    // ViewModel produced by the `converter`.
    if (widget.distinct) {
      stream = stream.where((vm) {
        final isDistinct = vm != latestValue;

        return isDistinct;
      });
    }

    // After each ViewModel is emitted from the Stream, we update the
    // latestValue. Important: This must be done after all other optional
    // transformations, such as ignoreChange.
    stream =
        stream.transform(StreamTransformer.fromHandlers(handleData: (vm, sink) {
      latestValue = vm;

      if (widget.onWillChange != null) {
        widget.onWillChange(latestValue);
      }

      if (widget.onDidChange != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          widget.onDidChange(latestValue);
        });
      }

      sink.add(vm);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return widget.rebuildOnChange
        ? StreamBuilder<ViewModel>(
            stream: stream,
            builder: (context, snapshot) => widget.builder(
              context,
              snapshot.hasData ? snapshot.data : latestValue,
            ),
          )
        : widget.builder(context, latestValue);
  }
}

/// If the StoreProvider.of method fails, this error will be thrown.
///
/// Often, when the `of` method fails, it is difficult to understand why since
/// there can be multiple causes. This error explains those causes so the user
/// can understand and fix the issue.
class StoreProviderError extends Error {
  /// The type of the class the user tried to retrieve
  Type type;

  /// Creates a StoreProviderError
  StoreProviderError(this.type);

  @override
  String toString() {
    return '''Error: No $type found. To fix, please try:
          
  * Wrapping your MaterialApp with the StoreProvider<State>, 
  rather than an individual Route
  * Providing full type information to your Store<State>, 
  StoreProvider<State> and StoreConnector<State, ViewModel>
  * Ensure you are using consistent and complete imports. 
  E.g. always use `import 'package:my_app/app_state.dart';
  
If none of these solutions work, please file a bug at:
https://github.com/brianegan/flutter_redux/issues/new
      ''';
  }
}

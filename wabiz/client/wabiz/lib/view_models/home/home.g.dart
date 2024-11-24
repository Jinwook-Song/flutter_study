// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      projects: (json['projects'] as List<dynamic>?)
              ?.map((e) => HomeItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'projects': instance.projects,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchHomeProjectHash() => r'6b1f0712a5103dadcd4fd56fb7195b6164a6e2fa';

/// See also [fetchHomeProject].
@ProviderFor(fetchHomeProject)
final fetchHomeProjectProvider = AutoDisposeFutureProvider<HomeModel>.internal(
  fetchHomeProject,
  name: r'fetchHomeProjectProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchHomeProjectHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchHomeProjectRef = AutoDisposeFutureProviderRef<HomeModel>;
String _$fetchHomeCategoriesHash() =>
    r'507107e5885c217075e58140e7106f297ac4f8d3';

/// See also [fetchHomeCategories].
@ProviderFor(fetchHomeCategories)
final fetchHomeCategoriesProvider =
    AutoDisposeFutureProvider<List<ProjectCategory>>.internal(
  fetchHomeCategories,
  name: r'fetchHomeCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchHomeCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchHomeCategoriesRef
    = AutoDisposeFutureProviderRef<List<ProjectCategory>>;
String _$homeViewModelHash() => r'a0dba5f585823dc3c340e7df4fa3850b91f70584';

/// See also [HomeViewModel].
@ProviderFor(HomeViewModel)
final homeViewModelProvider =
    AutoDisposeNotifierProvider<HomeViewModel, HomeState>.internal(
  HomeViewModel.new,
  name: r'homeViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeViewModel = AutoDisposeNotifier<HomeState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

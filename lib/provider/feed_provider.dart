import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/feed.dart';





final feedProvider = StateNotifierProvider<FeedProvider,List<Feed>>((ref) => FeedProvider([]));

class FeedProvider extends StateNotifier<List<Feed>>{
  FeedProvider(super.state);

  void addFeed(Feed feed){
    state = [...state, feed];
  }

  void removeFeed(Feed feed){
    state.remove(feed);
    state = [...state];
  }


}









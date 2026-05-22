import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'movies_event.dart';
import 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
 
  
  MoviesBloc():super(MoviesInitial());
  @override
 on<>(event , emit){
    if(event is GetNowPlayingMoviesEvent)async{
      emit(GetNowPlayingMoviesLoadingState());
      BaseMovieRemoteDataSource baseMovieRemoteDataSource= MovieRemotDataSource(apiConsumer: );
       BaseMoviesRepository baseMoviesRepository= MovieRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
      final result =await GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
         
      result.fold(
        (l) => emit(GetNowPlayingMoviesErrorState(error:l.message)),
        (r) => emit(GetNowPlayingMoviesSuccessState(movies: r)),
      );
    }else if(event is GetPopularMoviesEvent){
      emit(GetPopularMoviesLoadingState());
      BaseMovieRemoteDataSource baseMovieRemoteDataSource= MovieRemotDataSource(apiConsumer: );
       BaseMoviesRepository baseMoviesRepository= MovieRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
      final result =await GetPopularMoviesUseCase(baseMoviesRepository).execute();
         
      result.fold(
        (l) => emit(GetPopularMoviesErrorState(error:l.message)),
        (r) => emit(GetPopularMoviesSuccessState(movies: r)),
      );
    }else if(event is GetTopRatedMoviesEvent){
      emit(GetTopRatedMoviesLoadingState());
      BaseMovieRemoteDataSource baseMovieRemoteDataSource= MovieRemotDataSource(apiConsumer: );
       BaseMoviesRepository baseMoviesRepository= MovieRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
      final result =await GetTopRatedMoviesUseCase(baseMoviesRepository).execute();
         
      result.fold(
        (l) => emit(GetTopRatedMoviesErrorState(error:l.message)),
        (r) => emit(GetTopRatedMoviesSuccessState(movies: r)),
      );
    }else if(event is GetTopRatedMoviesEvent){
      emit(GetTopRatedMoviesLoadingState());
      BaseMovieRemoteDataSource baseMovieRemoteDataSource= MovieRemotDataSource(apiConsumer: );
       BaseMoviesRepository baseMoviesRepository= MovieRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
      final result =await GetTopRatedMoviesUseCase(baseMoviesRepository).execute();
         
      result.fold(
        (l) => emit(GetTopRatedMoviesErrorState(error:l.message)),
        (r) => emit(GetTopRatedMoviesSuccessState(movies: r)),
      );
    }
  }
 
}

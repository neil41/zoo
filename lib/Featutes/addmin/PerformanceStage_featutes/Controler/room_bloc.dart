import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:managethezoo/Featutes/addmin/PerformanceStage_featutes/Models/room_model.dart';



part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(RoomState()) {

    on<RoomEventRoom>((event, emit) {

   //   log("lololosl::::::${event.dataroom}");
      //emit(state.copyWith(dataroom:state.dataroom.add<Rooms>(Rooms(seats: "seats", Baht: "Baht")) ));
    // log("aaaaaaaa::::::${emit(}");



          emit(state.copyWith(room: state.room  +1 ));
     emit(state.copyWith(data:"true"  ));
     log( "zzzzzzzzzzz"+event.user.seats);
     log( "yyyyyyyyyy"+event.user.Baht);

     emit(state.copyWith(dataroom: [Rooms(seats:  event.user.seats , Baht: event.user.Baht)] ));
    });
  }
}

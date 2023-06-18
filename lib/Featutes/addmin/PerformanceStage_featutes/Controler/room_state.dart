part of 'room_bloc.dart';

class RoomState extends Equatable {
  RoomState({
    this.data = '',
    this.room = 0,
      this.dataroom = const <Rooms>[]
  });
 final List<Rooms> dataroom;
 final int room;
 final String data;


  RoomState copyWith({
    List<Rooms>? dataroom,
   int? room,
    String? data,
  }){
    return RoomState(room: room?? this.room,data: data?? this.data,  dataroom: dataroom ?? this.dataroom);
  }

  @override
  List<Object> get props => [dataroom,room,data];
}


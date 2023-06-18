part of 'room_bloc.dart';

abstract class RoomEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class RoomEventRoom extends RoomEvent{
  final Rooms user ;
  RoomEventRoom(this.user);



}
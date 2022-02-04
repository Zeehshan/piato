// @override
// Widget build(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Chewie(
//       controller: _chewieController,
//     ),
//   );
// }
// final VideoPlayerController videoPlayerController;
// final bool looping;
// final bool autoplay;


// VideoItems({
//   @required this.videoPlayerController,
//   this.looping, this.autoplay,
//   Key key,
// }) : super(key: key);

// @override
// void initState() {
//   super.initState();
//   _chewieController = ChewieController(
//     videoPlayerController: widget.videoPlayerController,
//     aspectRatio:5/8,
//     autoInitialize: true,
//     autoPlay: widget.autoplay,
//     looping: widget.looping,
//     errorBuilder: (context, errorMessage) {
//       return Center(
//         child: Text(
//           errorMessage,
//           style: TextStyle(color: Colors.white),
//         ),
//       );
//     },
//   );
// }

// @override
// void dispose() {
//   super.dispose();
//   _chewieController.dispose();
// }
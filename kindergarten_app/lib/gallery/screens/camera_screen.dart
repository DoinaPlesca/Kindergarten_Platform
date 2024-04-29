//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CameraScreen extends StatefulWidget {
//   const CameraScreen({super.key});
//
//   @override
//   State<CameraScreen> createState() => _CameraScreenState();
// }
//
// class _CameraScreenState extends State<CameraScreen> {
//   CameraDescription? selectedCamera;
//
//   ///holds information about a camera of the device
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Camera')),
//         drawer: const AppDrawer(),
//         body: switch (selectedCamera) {
//           null => _buildCameraSelection(),
//           _ => CameraWidget(
//               camera: selectedCamera!,
//               key: ValueKey('camera-${selectedCamera!.name}')),
//         });
//   }
//
//   ///all method tell what camera is has to be use
//
//   ///button for select camera
//   Widget _buildCameraSelection() {
//     return FutureBuilder(
//       future: availableCameras(),
//       builder: (context, snapshot) {
//         return Center(
//           child: Column(
//             children: [
//               const Text('Select a camera to use:'),
//               for (final camera in snapshot.data ?? <CameraDescription>[])
//                 _buildSelectCameraButton(camera)
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _buildSelectCameraButton(CameraDescription camera) {
//     return OutlinedButton.icon(
//       onPressed: () => setState(() => selectedCamera = camera),
//       icon: switch (camera.lensDirection) {
//         CameraLensDirection.front => const Icon(Icons.person),
//         CameraLensDirection.back => const Icon(Icons.landscape),
//         CameraLensDirection.external => const Icon(Icons.camera_alt),
//       },
//       label: Text(camera.name),
//     );
//   }
// }